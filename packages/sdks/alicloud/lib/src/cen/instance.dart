import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Cen Instance resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Cen Instance and how to use it, see [What is Cen Instance](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createcen).
///
/// > **NOTE:** Available since v1.15.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     description=name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			Description:     pulumi.String(name),
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///       description: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Cen Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The name of the CEN instance.
  late final pulumi.Output<String> cenInstanceName;
  /// The time when the CEN instance was created.
  late final pulumi.Output<String> createTime;
  /// The description of the CEN instance.
  late final pulumi.Output<String?> description;
  /// . Field 'name' has been deprecated from provider version 1.246.0. New field 'cen_instance_name' instead.
  late final pulumi.Output<String> name;
  /// The level of CIDR block overlapping. Valid values:  REDUCED: Overlapped CIDR blocks are allowed. However, the overlapped CIDR blocks cannot be the same.
  late final pulumi.Output<String> protectionLevel;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The state of the CEN instance.   Creating: The CEN instance is being created. Active: The CEN instance is running. Deleting: The CEN instance is being deleted.
  late final pulumi.Output<String> status;
  /// The tags of the CEN instance.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_cen_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenInstanceName = registerOutput<String>('cenInstanceName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.protectionLevel = registerOutput<String>('protectionLevel');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cenInstanceName = registerOutput<String>('cenInstanceName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.protectionLevel = registerOutput<String>('protectionLevel');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
