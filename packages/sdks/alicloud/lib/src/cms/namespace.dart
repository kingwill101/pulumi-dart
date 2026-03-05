import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// Provides a Cloud Monitor Service Namespace resource.
///
/// For information about Cloud Monitor Service Namespace and how to use it, see [What is Namespace](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createhybridmonitornamespace).
///
/// &gt; **NOTE:** Available since v1.171.0.
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
/// const example = new alicloud.cms.Namespace("example", {
///     namespace: "tf-example",
///     specification: "cms.s1.large",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.Namespace("example",
///     namespace="tf-example",
///     specification="cms.s1.large")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Cms.Namespace("example", new()
///     {
///         NamespaceName = "tf-example",
///         Specification = "cms.s1.large",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cms.NewNamespace(ctx, "example", &cms.NamespaceArgs{
/// 			Namespace:     pulumi.String("tf-example"),
/// 			Specification: pulumi.String("cms.s1.large"),
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
/// import com.pulumi.alicloud.cms.Namespace;
/// import com.pulumi.alicloud.cms.NamespaceArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespace("tf-example")
///             .specification("cms.s1.large")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cms:Namespace
///     properties:
///       namespace: tf-example
///       specification: cms.s1.large
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/namespace:Namespace example <id>
/// ```
class Namespace extends pulumi.CustomResource {
  /// The description of the namespace.
  late final pulumi.Output<String?> description;
  /// The name of the namespace. The name can contain lowercase letters, digits, and hyphens (-).
  late final pulumi.Output<String> namespace;
  /// The data retention period. Default value: `cms.s1.3xlarge`. Valid values:
  /// - `cms.s1.large`: Data storage duration is 15 days.
  /// - `cms.s1.xlarge`: Data storage duration is 32 days.
  /// - `cms.s1.2xlarge`: Data storage duration 63 days.
  /// - `cms.s1.3xlarge`: Data storage duration 93 days.
  /// - `cms.s1.6xlarge`: Data storage duration 185 days.
  /// - `cms.s1.12xlarge`: Data storage duration 376 days.
  late final pulumi.Output<String> specification;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_cms_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    namespace = registerOutput<String>('namespace');
    specification = registerOutput<String>('specification');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    namespace = registerOutput<String>('namespace');
    specification = registerOutput<String>('specification');
  }
}
