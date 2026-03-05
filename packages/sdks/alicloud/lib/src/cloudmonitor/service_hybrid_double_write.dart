import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_hybrid_double_write_args.dart';
import 'service_hybrid_double_write_state.dart';

/// Provides a Cloud Monitor Service Hybrid Double Write resource.
///
/// For information about Cloud Monitor Service Hybrid Double Write and how to use it, see [What is Hybrid Double Write](https://next.api.alibabacloud.com/document/Cms/2018-03-08/CreateHybridDoubleWrite).
///
/// &gt; **NOTE:** Available since v1.210.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getAccount({});
/// const source = new alicloud.cms.Namespace("source", {namespace: name});
/// const defaultNamespace = new alicloud.cms.Namespace("default", {namespace: `${name}-source`});
/// const defaultServiceHybridDoubleWrite = new alicloud.cloudmonitor.ServiceHybridDoubleWrite("default", {
///     sourceNamespace: source.id,
///     sourceUserId: _default.then(_default => _default.id),
///     namespace: defaultNamespace.id,
///     userId: _default.then(_default => _default.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_account()
/// source = alicloud.cms.Namespace("source", namespace=name)
/// default_namespace = alicloud.cms.Namespace("default", namespace=f"{name}-source")
/// default_service_hybrid_double_write = alicloud.cloudmonitor.ServiceHybridDoubleWrite("default",
///     source_namespace=source.id,
///     source_user_id=default.id,
///     namespace=default_namespace.id,
///     user_id=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var source = new AliCloud.Cms.Namespace("source", new()
///     {
///         NamespaceName = name,
///     });
///
///     var defaultNamespace = new AliCloud.Cms.Namespace("default", new()
///     {
///         NamespaceName = $"{name}-source",
///     });
///
///     var defaultServiceHybridDoubleWrite = new AliCloud.CloudMonitor.ServiceHybridDoubleWrite("default", new()
///     {
///         SourceNamespace = source.Id,
///         SourceUserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         Namespace = defaultNamespace.Id,
///         UserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudmonitor"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := cms.NewNamespace(ctx, "source", &cms.NamespaceArgs{
/// 			Namespace: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := cms.NewNamespace(ctx, "default", &cms.NamespaceArgs{
/// 			Namespace: pulumi.Sprintf("%v-source", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudmonitor.NewServiceHybridDoubleWrite(ctx, "default", &cloudmonitor.ServiceHybridDoubleWriteArgs{
/// 			SourceNamespace: source.ID(),
/// 			SourceUserId:    pulumi.String(_default.Id),
/// 			Namespace:       defaultNamespace.ID(),
/// 			UserId:          pulumi.String(_default.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.cms.Namespace;
/// import com.pulumi.alicloud.cms.NamespaceArgs;
/// import com.pulumi.alicloud.cloudmonitor.ServiceHybridDoubleWrite;
/// import com.pulumi.alicloud.cloudmonitor.ServiceHybridDoubleWriteArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var source = new Namespace("source", NamespaceArgs.builder()
///             .namespace(name)
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespace(String.format("%s-source", name))
///             .build());
///
///         var defaultServiceHybridDoubleWrite = new ServiceHybridDoubleWrite("defaultServiceHybridDoubleWrite", ServiceHybridDoubleWriteArgs.builder()
///             .sourceNamespace(source.id())
///             .sourceUserId(default_.id())
///             .namespace(defaultNamespace.id())
///             .userId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   source:
///     type: alicloud:cms:Namespace
///     properties:
///       namespace: ${name}
///   defaultNamespace:
///     type: alicloud:cms:Namespace
///     name: default
///     properties:
///       namespace: ${name}-source
///   defaultServiceHybridDoubleWrite:
///     type: alicloud:cloudmonitor:ServiceHybridDoubleWrite
///     name: default
///     properties:
///       sourceNamespace: ${source.id}
///       sourceUserId: ${default.id}
///       namespace: ${defaultNamespace.id}
///       userId: ${default.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Hybrid Double Write can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudmonitor/serviceHybridDoubleWrite:ServiceHybridDoubleWrite example <source_namespace>:<source_user_id>
/// ```
class ServiceHybridDoubleWrite extends pulumi.CustomResource {
  /// Target Namespace.
  late final pulumi.Output<String> namespace;
  /// Source Namespace.
  late final pulumi.Output<String> sourceNamespace;
  /// Source UserId.
  late final pulumi.Output<String> sourceUserId;
  /// Target UserId.
  late final pulumi.Output<String> userId;

  /// Creates a new [ServiceHybridDoubleWrite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceHybridDoubleWrite]. {@macro pulumi_cloudmonitor_service_hybrid_double_write_service_hybrid_double_write_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceHybridDoubleWrite(
    String name, {
    ServiceHybridDoubleWriteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceHybridDoubleWrite:ServiceHybridDoubleWrite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    namespace = registerOutput<String>('namespace');
    sourceNamespace = registerOutput<String>('sourceNamespace');
    sourceUserId = registerOutput<String>('sourceUserId');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [ServiceHybridDoubleWrite] resource's state with the given [name] and [id].
  static ServiceHybridDoubleWrite get(
    String name,
    pulumi.Input<String> id, {
    ServiceHybridDoubleWriteState? state,
  }) {
    return ServiceHybridDoubleWrite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceHybridDoubleWrite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceHybridDoubleWrite:ServiceHybridDoubleWrite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    namespace = registerOutput<String>('namespace');
    sourceNamespace = registerOutput<String>('sourceNamespace');
    sourceUserId = registerOutput<String>('sourceUserId');
    userId = registerOutput<String>('userId');
  }
}
