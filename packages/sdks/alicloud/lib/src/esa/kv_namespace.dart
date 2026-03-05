import 'package:pulumi/pulumi.dart' as pulumi;
import 'kv_namespace_args.dart';
import 'kv_namespace_state.dart';

/// Provides a ESA Kv Namespace resource.
///
///
///
/// For information about ESA Kv Namespace and how to use it, see [What is Kv Namespace](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateKvNamespace).
///
/// &gt; **NOTE:** Available since v1.244.0.
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
/// const _default = new alicloud.esa.KvNamespace("default", {
///     description: "this is a example namespace.",
///     kvNamespace: "example_namespace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.KvNamespace("default",
///     description="this is a example namespace.",
///     kv_namespace="example_namespace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Esa.KvNamespace("default", new()
///     {
///         Description = "this is a example namespace.",
///         NamespaceValue = "example_namespace",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := esa.NewKvNamespace(ctx, "default", &esa.KvNamespaceArgs{
/// 			Description: pulumi.String("this is a example namespace."),
/// 			KvNamespace: pulumi.String("example_namespace"),
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
/// import com.pulumi.alicloud.esa.KvNamespace;
/// import com.pulumi.alicloud.esa.KvNamespaceArgs;
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
///         var default_ = new KvNamespace("default", KvNamespaceArgs.builder()
///             .description("this is a example namespace.")
///             .kvNamespace("example_namespace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:esa:KvNamespace
///     properties:
///       description: this is a example namespace.
///       kvNamespace: example_namespace
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Kv Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/kvNamespace:KvNamespace example <id>
/// ```
class KvNamespace extends pulumi.CustomResource {
  /// The description of the namespace.
  late final pulumi.Output<String?> description;
  /// The name of the namespace.
  late final pulumi.Output<String> kvNamespace;
  /// The status of the namespace.
  late final pulumi.Output<String> status;

  /// Creates a new [KvNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KvNamespace]. {@macro pulumi_esa_kv_namespace_kv_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KvNamespace(
    String name, {
    KvNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/kvNamespace:KvNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    kvNamespace = registerOutput<String>('kvNamespace');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [KvNamespace] resource's state with the given [name] and [id].
  static KvNamespace get(
    String name,
    pulumi.Input<String> id, {
    KvNamespaceState? state,
  }) {
    return KvNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KvNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/kvNamespace:KvNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    kvNamespace = registerOutput<String>('kvNamespace');
    status = registerOutput<String>('status');
  }
}
