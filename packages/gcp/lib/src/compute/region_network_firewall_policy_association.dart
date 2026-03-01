import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_association_args.dart';

/// The Compute NetworkFirewallPolicyAssociation resource
///
///
/// To get more information about RegionNetworkFirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Region Network Firewall Policy Association
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
///     name: "my-policy",
///     project: "my-project-name",
///     description: "Sample global network firewall policy",
///     region: "us-west1",
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.compute.RegionNetworkFirewallPolicyAssociation("default", {
///     name: "my-association",
///     project: "my-project-name",
///     attachmentTarget: network.id,
///     firewallPolicy: policy.id,
///     region: "us-west1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
///     name="my-policy",
///     project="my-project-name",
///     description="Sample global network firewall policy",
///     region="us-west1")
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default = gcp.compute.RegionNetworkFirewallPolicyAssociation("default",
///     name="my-association",
///     project="my-project-name",
///     attachment_target=network.id,
///     firewall_policy=policy.id,
///     region="us-west1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicy("policy", new()
///     {
///         Name = "my-policy",
///         Project = "my-project-name",
///         Description = "Sample global network firewall policy",
///         Region = "us-west1",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.Compute.RegionNetworkFirewallPolicyAssociation("default", new()
///     {
///         Name = "my-association",
///         Project = "my-project-name",
///         AttachmentTarget = network.Id,
///         FirewallPolicy = policy.Id,
///         Region = "us-west1",
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
/// 		policy, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("my-policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Region:      pulumi.String("us-west1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkFirewallPolicyAssociation(ctx, "default", &compute.RegionNetworkFirewallPolicyAssociationArgs{
/// 			Name:             pulumi.String("my-association"),
/// 			Project:          pulumi.String("my-project-name"),
/// 			AttachmentTarget: network.ID(),
/// 			FirewallPolicy:   policy.ID(),
/// 			Region:           pulumi.String("us-west1"),
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyAssociationArgs;
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
///         var policy = new RegionNetworkFirewallPolicy("policy", RegionNetworkFirewallPolicyArgs.builder()
///             .name("my-policy")
///             .project("my-project-name")
///             .description("Sample global network firewall policy")
///             .region("us-west1")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new RegionNetworkFirewallPolicyAssociation("default", RegionNetworkFirewallPolicyAssociationArgs.builder()
///             .name("my-association")
///             .project("my-project-name")
///             .attachmentTarget(network.id())
///             .firewallPolicy(policy.id())
///             .region("us-west1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicy
///     properties:
///       name: my-policy
///       project: my-project-name
///       description: Sample global network firewall policy
///       region: us-west1
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:compute:RegionNetworkFirewallPolicyAssociation
///     properties:
///       name: my-association
///       project: my-project-name
///       attachmentTarget: ${network.id}
///       firewallPolicy: ${policy.id}
///       region: us-west1
/// ```
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
///
/// * `{{project}}/{{region}}/{{firewall_policy}}/{{name}}`
///
/// * `{{region}}/{{firewall_policy}}/{{name}}`
///
/// * `{{project}}/{{firewall_policy}}/{{name}}`
///
/// * `{{firewall_policy}}/{{name}}`
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{project}}/{{region}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{region}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{project}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class RegionNetworkFirewallPolicyAssociation extends pulumi.CustomResource {
  /// The target that the firewall policy is attached to.
  late final pulumi.Output<String> attachmentTarget;

  /// The firewall policy of the resource.
  late final pulumi.Output<String> firewallPolicy;

  /// The name for an association.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The location of this resource.
  late final pulumi.Output<String> region;

  /// The short name of the firewall policy of the association.
  late final pulumi.Output<String> shortName;

  /// Creates a new [RegionNetworkFirewallPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkFirewallPolicyAssociation]. {@macro pulumi_compute_region_network_firewall_policy_association_region_network_firewall_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkFirewallPolicyAssociation(
    String name, {
    RegionNetworkFirewallPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.attachmentTarget = registerOutput<String>('attachmentTarget');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.shortName = registerOutput<String>('shortName');
  }
}
