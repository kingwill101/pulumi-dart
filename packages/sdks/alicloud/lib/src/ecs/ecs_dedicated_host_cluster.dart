import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_dedicated_host_cluster_args.dart';
import 'ecs_dedicated_host_cluster_state.dart';

/// Provides a ECS Dedicated Host Cluster resource.
///
/// For information about ECS Dedicated Host Cluster and how to use it, see [What is Dedicated Host Cluster](https://www.alibabacloud.com/help/en/doc-detail/184667.html).
///
/// &gt; **NOTE:** Available since v1.146.0+.
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
/// const example = alicloud.getZones({});
/// const exampleEcsDedicatedHostCluster = new alicloud.ecs.EcsDedicatedHostCluster("example", {
///     dedicatedHostClusterName: "example_value",
///     description: "example_value",
///     zoneId: example.then(example => example.zones?.[0]?.id),
///     tags: {
///         Create: "TF",
///         For: "DDH_Cluster_Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.get_zones()
/// example_ecs_dedicated_host_cluster = alicloud.ecs.EcsDedicatedHostCluster("example",
///     dedicated_host_cluster_name="example_value",
///     description="example_value",
///     zone_id=example.zones[0].id,
///     tags={
///         "Create": "TF",
///         "For": "DDH_Cluster_Test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.GetZones.Invoke();
///
///     var exampleEcsDedicatedHostCluster = new AliCloud.Ecs.EcsDedicatedHostCluster("example", new()
///     {
///         DedicatedHostClusterName = "example_value",
///         Description = "example_value",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Tags =
///         {
///             { "Create", "TF" },
///             { "For", "DDH_Cluster_Test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsDedicatedHostCluster(ctx, "example", &ecs.EcsDedicatedHostClusterArgs{
/// 			DedicatedHostClusterName: pulumi.String("example_value"),
/// 			Description:              pulumi.String("example_value"),
/// 			ZoneId:                   pulumi.String(example.Zones[0].Id),
/// 			Tags: pulumi.StringMap{
/// 				"Create": pulumi.String("TF"),
/// 				"For":    pulumi.String("DDH_Cluster_Test"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsDedicatedHostCluster;
/// import com.pulumi.alicloud.ecs.EcsDedicatedHostClusterArgs;
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
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var exampleEcsDedicatedHostCluster = new EcsDedicatedHostCluster("exampleEcsDedicatedHostCluster", EcsDedicatedHostClusterArgs.builder()
///             .dedicatedHostClusterName("example_value")
///             .description("example_value")
///             .zoneId(example.zones()[0].id())
///             .tags(Map.ofEntries(
///                 Map.entry("Create", "TF"),
///                 Map.entry("For", "DDH_Cluster_Test")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEcsDedicatedHostCluster:
///     type: alicloud:ecs:EcsDedicatedHostCluster
///     name: example
///     properties:
///       dedicatedHostClusterName: example_value
///       description: example_value
///       zoneId: ${example.zones[0].id}
///       tags:
///         Create: TF
///         For: DDH_Cluster_Test
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Dedicated Host Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsDedicatedHostCluster:EcsDedicatedHostCluster example <id>
/// ```
class EcsDedicatedHostCluster extends pulumi.CustomResource {
  /// The name of the dedicated host cluster. The name must be `2` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It cannot contain `http://` or `https://`.
  late final pulumi.Output<String?> dedicatedHostClusterName;

  /// The description of the dedicated host cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;

  /// The dry run.
  late final pulumi.Output<bool?> dryRun;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the zone in which to create the dedicated host cluster.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EcsDedicatedHostCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsDedicatedHostCluster]. {@macro pulumi_ecs_ecs_dedicated_host_cluster_ecs_dedicated_host_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsDedicatedHostCluster(
    String name, {
    EcsDedicatedHostClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsDedicatedHostCluster:EcsDedicatedHostCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dedicatedHostClusterName = registerOutput<String?>(
      'dedicatedHostClusterName',
    );
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    tags = registerOutput<Map<String, String>?>('tags');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EcsDedicatedHostCluster] resource's state with the given [name] and [id].
  static EcsDedicatedHostCluster get(
    String name,
    pulumi.Input<String> id, {
    EcsDedicatedHostClusterState? state,
  }) {
    return EcsDedicatedHostCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsDedicatedHostCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ecsDedicatedHostCluster:EcsDedicatedHostCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dedicatedHostClusterName = registerOutput<String?>(
      'dedicatedHostClusterName',
    );
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    tags = registerOutput<Map<String, String>?>('tags');
    zoneId = registerOutput<String>('zoneId');
  }
}
