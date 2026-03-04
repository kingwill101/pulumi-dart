import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_prefix_list_args.dart';
import 'ecs_prefix_list_state.dart';

/// Provides a ECS Prefix List resource.
///
/// For information about ECS Prefix List and how to use it, see [What is Prefix List.](https://www.alibabacloud.com/help/en/doc-detail/207969.html).
///
/// &gt; **NOTE:** Available in v1.152.0+.
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
/// const _default = new alicloud.ecs.EcsPrefixList("default", {
///     addressFamily: "IPv4",
///     maxEntries: 2,
///     prefixListName: "tftest",
///     description: "description",
///     entries: [{
///         cidr: "192.168.0.0/24",
///         description: "description",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.EcsPrefixList("default",
///     address_family="IPv4",
///     max_entries=2,
///     prefix_list_name="tftest",
///     description="description",
///     entries=[{
///         "cidr": "192.168.0.0/24",
///         "description": "description",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ecs.EcsPrefixList("default", new()
///     {
///         AddressFamily = "IPv4",
///         MaxEntries = 2,
///         PrefixListName = "tftest",
///         Description = "description",
///         Entries = new[]
///         {
///             new AliCloud.Ecs.Inputs.EcsPrefixListEntryArgs
///             {
///                 Cidr = "192.168.0.0/24",
///                 Description = "description",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewEcsPrefixList(ctx, "default", &ecs.EcsPrefixListArgs{
/// 			AddressFamily:  pulumi.String("IPv4"),
/// 			MaxEntries:     pulumi.Int(2),
/// 			PrefixListName: pulumi.String("tftest"),
/// 			Description:    pulumi.String("description"),
/// 			Entries: ecs.EcsPrefixListEntryArray{
/// 				&ecs.EcsPrefixListEntryArgs{
/// 					Cidr:        pulumi.String("192.168.0.0/24"),
/// 					Description: pulumi.String("description"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.ecs.EcsPrefixList;
/// import com.pulumi.alicloud.ecs.EcsPrefixListArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsPrefixListEntryArgs;
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
///         var default_ = new EcsPrefixList("default", EcsPrefixListArgs.builder()
///             .addressFamily("IPv4")
///             .maxEntries(2)
///             .prefixListName("tftest")
///             .description("description")
///             .entries(EcsPrefixListEntryArgs.builder()
///                 .cidr("192.168.0.0/24")
///                 .description("description")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ecs:EcsPrefixList
///     properties:
///       addressFamily: IPv4
///       maxEntries: 2
///       prefixListName: tftest
///       description: description
///       entries:
///         - cidr: 192.168.0.0/24
///           description: description
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Prefix List can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsPrefixList:EcsPrefixList example <id>
/// ```
class EcsPrefixList extends pulumi.CustomResource {
  /// The IP address family. Valid values: `IPv4`,`IPv6`.
  late final pulumi.Output<String> addressFamily;

  /// The description of the prefix list. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;

  /// The Entry. The details see Block `entry`.
  late final pulumi.Output<List<Map<String, dynamic>>> entries;

  /// The maximum number of entries that the prefix list can contain.  Valid values: 1 to 200.
  late final pulumi.Output<int> maxEntries;

  /// The name of the prefix. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with `http://`, `https://`, `com.aliyun`, or `com.alibabacloud`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  late final pulumi.Output<String> prefixListName;

  /// Creates a new [EcsPrefixList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsPrefixList]. {@macro pulumi_ecs_ecs_prefix_list_ecs_prefix_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsPrefixList(
    String name, {
    EcsPrefixListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsPrefixList:EcsPrefixList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressFamily = registerOutput<String>('addressFamily');
    description = registerOutput<String?>('description');
    entries = registerOutput<List<Map<String, dynamic>>>('entries');
    maxEntries = registerOutput<int>('maxEntries');
    prefixListName = registerOutput<String>('prefixListName');
  }

  /// Gets an existing [EcsPrefixList] resource's state with the given [name] and [id].
  static EcsPrefixList get(
    String name,
    pulumi.Input<String> id, {
    EcsPrefixListState? state,
  }) {
    return EcsPrefixList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsPrefixList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsPrefixList:EcsPrefixList',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressFamily = registerOutput<String>('addressFamily');
    description = registerOutput<String?>('description');
    entries = registerOutput<List<Map<String, dynamic>>>('entries');
    maxEntries = registerOutput<int>('maxEntries');
    prefixListName = registerOutput<String>('prefixListName');
  }
}
