import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_filter_args.dart';
import 'traffic_mirror_filter_egress_rule.dart';
import 'traffic_mirror_filter_ingress_rule.dart';
import 'traffic_mirror_filter_state.dart';

/// Provides a VPC Traffic Mirror Filter resource. Traffic mirror filter criteria.
///
/// For information about VPC Traffic Mirror Filter and how to use it, see [What is Traffic Mirror Filter](https://www.alibabacloud.com/help/doc-detail/207513.htm).
///
/// > **NOTE:** Available since v1.140.0.
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
/// const default3iXhoa = new alicloud.resourcemanager.ResourceGroup("default3iXhoa", {
///     displayName: "testname03",
///     resourceGroupName: name,
/// });
/// const defaultdNz2qk = new alicloud.resourcemanager.ResourceGroup("defaultdNz2qk", {
///     displayName: "testname04",
///     resourceGroupName: `${name}1`,
/// });
/// const _default = new alicloud.vpc.TrafficMirrorFilter("default", {
///     trafficMirrorFilterDescription: "test",
///     trafficMirrorFilterName: name,
///     resourceGroupId: default3iXhoa.id,
///     egressRules: [{
///         priority: 1,
///         protocol: "TCP",
///         action: "accept",
///         destinationCidrBlock: "32.0.0.0/4",
///         destinationPortRange: "80/80",
///         sourceCidrBlock: "16.0.0.0/4",
///         sourcePortRange: "80/80",
///     }],
///     ingressRules: [{
///         priority: 1,
///         protocol: "TCP",
///         action: "accept",
///         destinationCidrBlock: "10.64.0.0/10",
///         destinationPortRange: "80/80",
///         sourceCidrBlock: "10.0.0.0/8",
///         sourcePortRange: "80/80",
///     }],
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
/// default3i_xhoa = alicloud.resourcemanager.ResourceGroup("default3iXhoa",
///     display_name="testname03",
///     resource_group_name=name)
/// defaultd_nz2qk = alicloud.resourcemanager.ResourceGroup("defaultdNz2qk",
///     display_name="testname04",
///     resource_group_name=f"{name}1")
/// default = alicloud.vpc.TrafficMirrorFilter("default",
///     traffic_mirror_filter_description="test",
///     traffic_mirror_filter_name=name,
///     resource_group_id=default3i_xhoa.id,
///     egress_rules=[{
///         "priority": 1,
///         "protocol": "TCP",
///         "action": "accept",
///         "destination_cidr_block": "32.0.0.0/4",
///         "destination_port_range": "80/80",
///         "source_cidr_block": "16.0.0.0/4",
///         "source_port_range": "80/80",
///     }],
///     ingress_rules=[{
///         "priority": 1,
///         "protocol": "TCP",
///         "action": "accept",
///         "destination_cidr_block": "10.64.0.0/10",
///         "destination_port_range": "80/80",
///         "source_cidr_block": "10.0.0.0/8",
///         "source_port_range": "80/80",
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var default3iXhoa = new AliCloud.ResourceManager.ResourceGroup("default3iXhoa", new()
///     {
///         DisplayName = "testname03",
///         ResourceGroupName = name,
///     });
///
///     var defaultdNz2qk = new AliCloud.ResourceManager.ResourceGroup("defaultdNz2qk", new()
///     {
///         DisplayName = "testname04",
///         ResourceGroupName = $"{name}1",
///     });
///
///     var @default = new AliCloud.Vpc.TrafficMirrorFilter("default", new()
///     {
///         TrafficMirrorFilterDescription = "test",
///         TrafficMirrorFilterName = name,
///         ResourceGroupId = default3iXhoa.Id,
///         EgressRules = new[]
///         {
///             new AliCloud.Vpc.Inputs.TrafficMirrorFilterEgressRuleArgs
///             {
///                 Priority = 1,
///                 Protocol = "TCP",
///                 Action = "accept",
///                 DestinationCidrBlock = "32.0.0.0/4",
///                 DestinationPortRange = "80/80",
///                 SourceCidrBlock = "16.0.0.0/4",
///                 SourcePortRange = "80/80",
///             },
///         },
///         IngressRules = new[]
///         {
///             new AliCloud.Vpc.Inputs.TrafficMirrorFilterIngressRuleArgs
///             {
///                 Priority = 1,
///                 Protocol = "TCP",
///                 Action = "accept",
///                 DestinationCidrBlock = "10.64.0.0/10",
///                 DestinationPortRange = "80/80",
///                 SourceCidrBlock = "10.0.0.0/8",
///                 SourcePortRange = "80/80",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		default3iXhoa, err := resourcemanager.NewResourceGroup(ctx, "default3iXhoa", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("testname03"),
/// 			ResourceGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewResourceGroup(ctx, "defaultdNz2qk", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("testname04"),
/// 			ResourceGroupName: pulumi.Sprintf("%v1", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewTrafficMirrorFilter(ctx, "default", &vpc.TrafficMirrorFilterArgs{
/// 			TrafficMirrorFilterDescription: pulumi.String("test"),
/// 			TrafficMirrorFilterName:        pulumi.String(name),
/// 			ResourceGroupId:                default3iXhoa.ID(),
/// 			EgressRules: vpc.TrafficMirrorFilterEgressRuleTypeArray{
/// 				&vpc.TrafficMirrorFilterEgressRuleTypeArgs{
/// 					Priority:             pulumi.Int(1),
/// 					Protocol:             pulumi.String("TCP"),
/// 					Action:               pulumi.String("accept"),
/// 					DestinationCidrBlock: pulumi.String("32.0.0.0/4"),
/// 					DestinationPortRange: pulumi.String("80/80"),
/// 					SourceCidrBlock:      pulumi.String("16.0.0.0/4"),
/// 					SourcePortRange:      pulumi.String("80/80"),
/// 				},
/// 			},
/// 			IngressRules: vpc.TrafficMirrorFilterIngressRuleTypeArray{
/// 				&vpc.TrafficMirrorFilterIngressRuleTypeArgs{
/// 					Priority:             pulumi.Int(1),
/// 					Protocol:             pulumi.String("TCP"),
/// 					Action:               pulumi.String("accept"),
/// 					DestinationCidrBlock: pulumi.String("10.64.0.0/10"),
/// 					DestinationPortRange: pulumi.String("80/80"),
/// 					SourceCidrBlock:      pulumi.String("10.0.0.0/8"),
/// 					SourcePortRange:      pulumi.String("80/80"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilter;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterArgs;
/// import com.pulumi.alicloud.vpc.inputs.TrafficMirrorFilterEgressRuleArgs;
/// import com.pulumi.alicloud.vpc.inputs.TrafficMirrorFilterIngressRuleArgs;
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
///         var default3iXhoa = new ResourceGroup("default3iXhoa", ResourceGroupArgs.builder()
///             .displayName("testname03")
///             .resourceGroupName(name)
///             .build());
///
///         var defaultdNz2qk = new ResourceGroup("defaultdNz2qk", ResourceGroupArgs.builder()
///             .displayName("testname04")
///             .resourceGroupName(String.format("%s1", name))
///             .build());
///
///         var default_ = new TrafficMirrorFilter("default", TrafficMirrorFilterArgs.builder()
///             .trafficMirrorFilterDescription("test")
///             .trafficMirrorFilterName(name)
///             .resourceGroupId(default3iXhoa.id())
///             .egressRules(TrafficMirrorFilterEgressRuleArgs.builder()
///                 .priority(1)
///                 .protocol("TCP")
///                 .action("accept")
///                 .destinationCidrBlock("32.0.0.0/4")
///                 .destinationPortRange("80/80")
///                 .sourceCidrBlock("16.0.0.0/4")
///                 .sourcePortRange("80/80")
///                 .build())
///             .ingressRules(TrafficMirrorFilterIngressRuleArgs.builder()
///                 .priority(1)
///                 .protocol("TCP")
///                 .action("accept")
///                 .destinationCidrBlock("10.64.0.0/10")
///                 .destinationPortRange("80/80")
///                 .sourceCidrBlock("10.0.0.0/8")
///                 .sourcePortRange("80/80")
///                 .build())
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
///   default3iXhoa:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: testname03
///       resourceGroupName: ${name}
///   defaultdNz2qk:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: testname04
///       resourceGroupName: ${name}1
///   default:
///     type: alicloud:vpc:TrafficMirrorFilter
///     properties:
///       trafficMirrorFilterDescription: test
///       trafficMirrorFilterName: ${name}
///       resourceGroupId: ${default3iXhoa.id}
///       egressRules:
///         - priority: 1
///           protocol: TCP
///           action: accept
///           destinationCidrBlock: 32.0.0.0/4
///           destinationPortRange: 80/80
///           sourceCidrBlock: 16.0.0.0/4
///           sourcePortRange: 80/80
///       ingressRules:
///         - priority: 1
///           protocol: TCP
///           action: accept
///           destinationCidrBlock: 10.64.0.0/10
///           destinationPortRange: 80/80
///           sourceCidrBlock: 10.0.0.0/8
///           sourcePortRange: 80/80
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Traffic Mirror Filter can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/trafficMirrorFilter:TrafficMirrorFilter example <id>
/// ```
class TrafficMirrorFilter extends pulumi.CustomResource {
  /// Whether to PreCheck only this request. Value:
  /// - **true**: The check request is sent without creating traffic Image filter conditions. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request, returns a 2xx HTTP status code after passing the check, and directly creates a filter condition.
  late final pulumi.Output<bool?> dryRun;
  /// Information about the outbound rule. See the following `Block EgressRules`.
  late final pulumi.Output<List<TrafficMirrorFilterEgressRule>> egressRules;
  /// Inward direction rule information. See the following `Block IngressRules`.
  late final pulumi.Output<List<TrafficMirrorFilterIngressRule>> ingressRules;
  /// The ID of the resource group to which the VPC belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The tags of this resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The description of the TrafficMirrorFilter.
  late final pulumi.Output<String?> trafficMirrorFilterDescription;
  /// The name of the TrafficMirrorFilter.
  late final pulumi.Output<String?> trafficMirrorFilterName;

  /// Creates a new [TrafficMirrorFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorFilter]. {@macro pulumi_vpc_traffic_mirror_filter_traffic_mirror_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorFilter(
    String name, {
    TrafficMirrorFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/trafficMirrorFilter:TrafficMirrorFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.egressRules = registerOutput<List<TrafficMirrorFilterEgressRule>>('egressRules');
    this.ingressRules = registerOutput<List<TrafficMirrorFilterIngressRule>>('ingressRules');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trafficMirrorFilterDescription = registerOutput<String?>('trafficMirrorFilterDescription');
    this.trafficMirrorFilterName = registerOutput<String?>('trafficMirrorFilterName');
  }

  /// Gets an existing [TrafficMirrorFilter] resource's state with the given [name] and [id].
  static TrafficMirrorFilter get(
    String name,
    pulumi.Input<String> id, {
    TrafficMirrorFilterState? state,
  }) {
    return TrafficMirrorFilter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficMirrorFilter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/trafficMirrorFilter:TrafficMirrorFilter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.egressRules = registerOutput<List<TrafficMirrorFilterEgressRule>>('egressRules');
    this.ingressRules = registerOutput<List<TrafficMirrorFilterIngressRule>>('ingressRules');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trafficMirrorFilterDescription = registerOutput<String?>('trafficMirrorFilterDescription');
    this.trafficMirrorFilterName = registerOutput<String?>('trafficMirrorFilterName');
  }
}
