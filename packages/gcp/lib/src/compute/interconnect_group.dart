import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_args.dart';
import 'interconnect_group_configured.dart';
import 'interconnect_group_intent.dart';
import 'interconnect_group_interconnect.dart';
import 'interconnect_group_physical_structure.dart';

/// An interconnect group resource allows customers to create, analyze, and
/// expand their redundant connections.
///
///
/// To get more information about InterconnectGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/interconnects)
/// * How-to Guides
/// * [Create a Dedicated Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/concepts/dedicated-overview)
///
/// ## Example Usage
///
/// ### Interconnect Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_interconnect_group = new gcp.compute.InterconnectGroup("example-interconnect-group", {
///     name: "example-interconnect-group",
///     intent: {
///         topologyCapability: "NO_SLA",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_interconnect_group = gcp.compute.InterconnectGroup("example-interconnect-group",
///     name="example-interconnect-group",
///     intent={
///         "topology_capability": "NO_SLA",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_interconnect_group = new Gcp.Compute.InterconnectGroup("example-interconnect-group", new()
///     {
///         Name = "example-interconnect-group",
///         Intent = new Gcp.Compute.Inputs.InterconnectGroupIntentArgs
///         {
///             TopologyCapability = "NO_SLA",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewInterconnectGroup(ctx, "example-interconnect-group", &compute.InterconnectGroupArgs{
/// 			Name: pulumi.String("example-interconnect-group"),
/// 			Intent: &compute.InterconnectGroupIntentArgs{
/// 				TopologyCapability: pulumi.String("NO_SLA"),
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
/// import com.pulumi.gcp.compute.InterconnectGroup;
/// import com.pulumi.gcp.compute.InterconnectGroupArgs;
/// import com.pulumi.gcp.compute.inputs.InterconnectGroupIntentArgs;
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
///         var example_interconnect_group = new InterconnectGroup("example-interconnect-group", InterconnectGroupArgs.builder()
///             .name("example-interconnect-group")
///             .intent(InterconnectGroupIntentArgs.builder()
///                 .topologyCapability("NO_SLA")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-interconnect-group:
///     type: gcp:compute:InterconnectGroup
///     properties:
///       name: example-interconnect-group
///       intent:
///         topologyCapability: NO_SLA
/// ```
///
///
/// ## Import
///
/// InterconnectGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/interconnectGroups/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InterconnectGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectGroup:InterconnectGroup default projects/{{project}}/global/interconnectGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectGroup:InterconnectGroup default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/interconnectGroup:InterconnectGroup default {{name}}
/// ```
class InterconnectGroup extends pulumi.CustomResource {
  /// The status of the group as configured. This has the same
  /// structure as the operational field reported by the OperationalStatus
  /// method, but does not take into account the operational status of each
  /// resource.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectGroupConfigured>> configureds;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  late final pulumi.Output<InterconnectGroupIntent> intent;

  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectGroupInterconnect>?> interconnects;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// An analysis of the physical layout of Interconnects in this
  /// group. Every Interconnect in the group is shown once in this structure.
  /// Structure is documented below.
  late final pulumi.Output<List<InterconnectGroupPhysicalStructure>>
  physicalStructures;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [InterconnectGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterconnectGroup]. {@macro pulumi_compute_interconnect_group_interconnect_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterconnectGroup(
    String name, {
    InterconnectGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/interconnectGroup:InterconnectGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.configureds = registerOutput<List<InterconnectGroupConfigured>>(
      'configureds',
    );
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.intent = registerOutput<InterconnectGroupIntent>('intent');
    this.interconnects = registerOutput<List<InterconnectGroupInterconnect>?>(
      'interconnects',
    );
    this.name = registerOutput<String>('name');
    this.physicalStructures =
        registerOutput<List<InterconnectGroupPhysicalStructure>>(
          'physicalStructures',
        );
    this.project = registerOutput<String>('project');
  }
}
