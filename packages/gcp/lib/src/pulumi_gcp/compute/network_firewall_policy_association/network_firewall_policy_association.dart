import 'package:pulumi/pulumi.dart';
import 'network_firewall_policy_association_args.dart';

/// The Compute NetworkFirewallPolicyAssociation resource
///
///
/// To get more information about NetworkFirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Network Firewall Policy Association
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.NetworkFirewallPolicy("policy", {
/// name: "my-policy",
/// project: "my-project-name",
/// description: "Sample global network firewall policy",
/// });
/// const network = new gcp.compute.Network("network", {
/// name: "my-network",
/// autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.compute.NetworkFirewallPolicyAssociation("default", {
/// name: "my-association",
/// project: "my-project-name",
/// attachmentTarget: network.id,
/// firewallPolicy: policy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.NetworkFirewallPolicy("policy",
/// name="my-policy",
/// project="my-project-name",
/// description="Sample global network firewall policy")
/// network = gcp.compute.Network("network",
/// name="my-network",
/// auto_create_subnetworks=False)
/// default = gcp.compute.NetworkFirewallPolicyAssociation("default",
/// name="my-association",
/// project="my-project-name",
/// attachment_target=network.id,
/// firewall_policy=policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = new Gcp.Compute.NetworkFirewallPolicy("policy", new()
/// {
/// Name = "my-policy",
/// Project = "my-project-name",
/// Description = "Sample global network firewall policy",
/// });
///
/// var network = new Gcp.Compute.Network("network", new()
/// {
/// Name = "my-network",
/// AutoCreateSubnetworks = false,
/// });
///
/// var @default = new Gcp.Compute.NetworkFirewallPolicyAssociation("default", new()
/// {
/// Name = "my-association",
/// Project = "my-project-name",
/// AttachmentTarget = network.Id,
/// FirewallPolicy = policy.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// policy, err := compute.NewNetworkFirewallPolicy(ctx, "policy", &compute.NetworkFirewallPolicyArgs{
/// Name:        pulumi.String("my-policy"),
/// Project:     pulumi.String("my-project-name"),
/// Description: pulumi.String("Sample global network firewall policy"),
/// })
/// if err != nil {
/// return err
/// }
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-network"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNetworkFirewallPolicyAssociation(ctx, "default", &compute.NetworkFirewallPolicyAssociationArgs{
/// Name:             pulumi.String("my-association"),
/// Project:          pulumi.String("my-project-name"),
/// AttachmentTarget: network.ID(),
/// FirewallPolicy:   policy.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var policy = new NetworkFirewallPolicy("policy", NetworkFirewallPolicyArgs.builder()
/// .name("my-policy")
/// .project("my-project-name")
/// .description("Sample global network firewall policy")
/// .build());
///
/// var network = new Network("network", NetworkArgs.builder()
/// .name("my-network")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var default_ = new NetworkFirewallPolicyAssociation("default", NetworkFirewallPolicyAssociationArgs.builder()
/// .name("my-association")
/// .project("my-project-name")
/// .attachmentTarget(network.id())
/// .firewallPolicy(policy.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:NetworkFirewallPolicy
/// properties:
/// name: my-policy
/// project: my-project-name
/// description: Sample global network firewall policy
/// network:
/// type: gcp:compute:Network
/// properties:
/// name: my-network
/// autoCreateSubnetworks: false
/// default:
/// type: gcp:compute:NetworkFirewallPolicyAssociation
/// properties:
/// name: my-association
/// project: my-project-name
/// attachmentTarget: ${network.id}
/// firewallPolicy: ${policy.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NetworkFirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
///
/// * `{{project}}/{{firewall_policy}}/{{name}}`
///
/// * `{{firewall_policy}}/{{name}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default {{project}}/{{firewall_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class NetworkFirewallPolicyAssociation extends CustomResource {
  /// The target that the firewall policy is attached to.
  late final Output<String> attachmentTarget;

  /// The firewall policy of the resource.
  late final Output<String> firewallPolicy;

  /// The name for an association.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The short name of the firewall policy of the association.
  late final Output<String> shortName;

  NetworkFirewallPolicyAssociation(
    String name, {
    NetworkFirewallPolicyAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attachmentTarget = Output.createUnknown<String>();
    this.firewallPolicy = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.shortName = Output.createUnknown<String>();
  }
}
