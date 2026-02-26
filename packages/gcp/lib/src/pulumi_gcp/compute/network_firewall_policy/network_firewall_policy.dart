import 'package:pulumi/pulumi.dart';
import 'network_firewall_policy_args.dart';

/// The Compute NetworkFirewallPolicy resource
///
///
///
/// ## Example Usage
///
/// ### Network Firewall Policy Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.NetworkFirewallPolicy("policy", {
/// name: "tf-test-policy",
/// description: "Terraform test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.NetworkFirewallPolicy("policy",
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
/// var policy = new Gcp.Compute.NetworkFirewallPolicy("policy", new()
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
/// _, err := compute.NewNetworkFirewallPolicy(ctx, "policy", &compute.NetworkFirewallPolicyArgs{
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
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
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
/// type: gcp:compute:NetworkFirewallPolicy
/// properties:
/// name: tf-test-policy
/// description: Terraform test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NetworkFirewallPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicy:NetworkFirewallPolicy default projects/{{project}}/global/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicy:NetworkFirewallPolicy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicy:NetworkFirewallPolicy default {{name}}
/// ```
class NetworkFirewallPolicy extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final Output<String> fingerprint;

  /// User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> networkFirewallPolicyId;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`.
  late final Output<String> policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final Output<int> ruleTupleCount;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  NetworkFirewallPolicy(
    String name, {
    NetworkFirewallPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicy:NetworkFirewallPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.networkFirewallPolicyId =
        registerOutput<String>('networkFirewallPolicyId');
    this.policyType = registerOutput<String>('policyType');
    this.project = registerOutput<String>('project');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
