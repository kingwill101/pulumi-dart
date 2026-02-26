import 'package:pulumi/pulumi.dart';
import 'region_network_firewall_policy_args.dart';

/// The Compute NetworkFirewallPolicy resource
///
///
///
/// ## Example Usage
///
/// ### Region Network Firewall Policy Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
/// name: "tf-test-policy",
/// description: "Terraform test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
/// name="tf-test-policy",
/// description="Terraform test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = new Gcp.Compute.RegionNetworkFirewallPolicy("policy", new()
/// {
/// Name = "tf-test-policy",
/// Description = "Terraform test",
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
/// _, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// Name:        pulumi.String("tf-test-policy"),
/// Description: pulumi.String("Terraform test"),
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
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
/// var policy = new RegionNetworkFirewallPolicy("policy", RegionNetworkFirewallPolicyArgs.builder()
/// .name("tf-test-policy")
/// .description("Terraform test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:RegionNetworkFirewallPolicy
/// properties:
/// name: tf-test-policy
/// description: Terraform test
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Region Network Firewall Policy Roce
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
/// name: "rnf-policy",
/// description: "Terraform test",
/// policyType: "RDMA_ROCE_POLICY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
/// name="rnf-policy",
/// description="Terraform test",
/// policy_type="RDMA_ROCE_POLICY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = new Gcp.Compute.RegionNetworkFirewallPolicy("policy", new()
/// {
/// Name = "rnf-policy",
/// Description = "Terraform test",
/// PolicyType = "RDMA_ROCE_POLICY",
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
/// _, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// Name:        pulumi.String("rnf-policy"),
/// Description: pulumi.String("Terraform test"),
/// PolicyType:  pulumi.String("RDMA_ROCE_POLICY"),
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
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
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
/// var policy = new RegionNetworkFirewallPolicy("policy", RegionNetworkFirewallPolicyArgs.builder()
/// .name("rnf-policy")
/// .description("Terraform test")
/// .policyType("RDMA_ROCE_POLICY")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:compute:RegionNetworkFirewallPolicy
/// properties:
/// name: rnf-policy
/// description: Terraform test
/// policyType: RDMA_ROCE_POLICY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RegionNetworkFirewallPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default {{name}}
/// ```
class RegionNetworkFirewallPolicy extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final Output<String> fingerprint;

  /// User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`.
  late final Output<String> policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of this resource.
  late final Output<String> region;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> regionNetworkFirewallPolicyId;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final Output<int> ruleTupleCount;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  RegionNetworkFirewallPolicy(
    String name, {
    RegionNetworkFirewallPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.fingerprint = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyType = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.regionNetworkFirewallPolicyId = Output.createUnknown<String>();
    this.ruleTupleCount = Output.createUnknown<int>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
  }
}
