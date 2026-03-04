import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_args.dart';
import 'list_state.dart';

/// Provides a ESA List resource.
///
///
///
/// For information about ESA List and how to use it, see [What is List](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/user-guide/grouping).
///
/// &gt; **NOTE:** Available since v1.242.0.
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
/// const _default = new alicloud.esa.List("default", {
///     description: "resource example ip list",
///     kind: "ip",
///     items: [
///         "10.1.1.1",
///         "10.1.1.2",
///         "10.1.1.3",
///     ],
///     name: "resource_example_ip_list",
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
/// default = alicloud.esa.List("default",
///     description="resource example ip list",
///     kind="ip",
///     items=[
///         "10.1.1.1",
///         "10.1.1.2",
///         "10.1.1.3",
///     ],
///     name="resource_example_ip_list")
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
///     var @default = new AliCloud.Esa.List("default", new()
///     {
///         Description = "resource example ip list",
///         Kind = "ip",
///         Items = new[]
///         {
///             "10.1.1.1",
///             "10.1.1.2",
///             "10.1.1.3",
///         },
///         Name = "resource_example_ip_list",
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
/// 		_, err := esa.NewList(ctx, "default", &esa.ListArgs{
/// 			Description: pulumi.String("resource example ip list"),
/// 			Kind:        pulumi.String("ip"),
/// 			Items: pulumi.StringArray{
/// 				pulumi.String("10.1.1.1"),
/// 				pulumi.String("10.1.1.2"),
/// 				pulumi.String("10.1.1.3"),
/// 			},
/// 			Name: pulumi.String("resource_example_ip_list"),
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
/// import com.pulumi.alicloud.esa.List;
/// import com.pulumi.alicloud.esa.ListArgs;
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
///         var default_ = new List("default", ListArgs.builder()
///             .description("resource example ip list")
///             .kind("ip")
///             .items(
///                 "10.1.1.1",
///                 "10.1.1.2",
///                 "10.1.1.3")
///             .name("resource_example_ip_list")
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
///     type: alicloud:esa:List
///     properties:
///       description: resource example ip list
///       kind: ip
///       items:
///         - 10.1.1.1
///         - 10.1.1.2
///         - 10.1.1.3
///       name: resource_example_ip_list
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA List can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/list:List example <id>
/// ```
class ListType extends pulumi.CustomResource {
  /// The description of the custom list.
  late final pulumi.Output<String?> description;

  /// The items in the custom list, which are displayed as an array.
  late final pulumi.Output<List<String>?> items;

  /// The type of the custom list.
  late final pulumi.Output<String?> kind;

  /// The name of the custom list.
  late final pulumi.Output<String> name;

  /// Creates a new [ListType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListType]. {@macro pulumi_esa_list_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListType(String name, {ListArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:esa/list:List',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    description = registerOutput<String?>('description');
    items = registerOutput<List<String>?>('items');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ListType] resource's state with the given [name] and [id].
  static ListType get(
    String name,
    pulumi.Input<String> id, {
    ListState? state,
  }) {
    return ListType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ListType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/list:List',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    items = registerOutput<List<String>?>('items');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
  }
}
