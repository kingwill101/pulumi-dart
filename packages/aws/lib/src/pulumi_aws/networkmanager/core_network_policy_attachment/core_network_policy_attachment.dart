import 'package:pulumi/pulumi.dart';
import 'core_network_policy_attachment_args.dart';

/// Manages a Network Manager Core Network Policy Attachment.
///
/// Use this resource to attach a Core Network Policy to an existing Core Network and execute the change set, which deploys changes globally based on the policy submitted (sets the policy to `LIVE`).
///
/// > **NOTE:** Deleting this resource will not delete the current policy defined in this resource. Deleting this resource will also not revert the current `LIVE` policy to the previous version.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With VPC Attachment (Single Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the `create_base_policy` argument of the `aws.networkmanager.CoreNetwork` resource to `true` if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the `create_base_policy` argument. There are 2 options to implement this:
///
/// - Option 1: Use the `base_policy_document` argument in the `aws.networkmanager.CoreNetwork` resource that allows the most customizations to a base policy. Use this to customize the `edge_locations` `asn`. In the example below, `us-west-2` and ASN `65500` are used in the base policy.
/// - Option 2: Use the `create_base_policy` argument only. This creates a base policy in the region specified in the `provider` block.
///
/// ### Option 1 - using base_policy_document
///
///
///
/// ### Option 2 - create_base_policy only
///
///
///
/// ### With VPC Attachment (Multi-Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the `create_base_policy` argument of the `aws.networkmanager.CoreNetwork` resource to `true` if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the `create_base_policy` argument. For multi-region in a core network that does not yet have a `LIVE` policy, there are 2 options:
///
/// - Option 1: Use the `base_policy_document` argument that allows the most customizations to a base policy. Use this to customize the `edge_locations` `asn`. In the example below, `us-west-2`, `us-east-1` and specific ASNs are used in the base policy.
/// - Option 2: Pass a list of regions to the `aws.networkmanager.CoreNetwork` resource `base_policy_regions` argument. In the example below, `us-west-2` and `us-east-1` are specified in the base policy.
///
/// ### Option 1 - using base_policy_document
///
///
///
/// ### Option 2 - using base_policy_regions
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.CoreNetworkPolicyAttachment` using the core network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/coreNetworkPolicyAttachment:CoreNetworkPolicyAttachment example core-network-0d47f6t230mz46dy4
/// ```
class CoreNetworkPolicyAttachment extends CustomResource {
  /// ID of the core network that a policy will be attached to and made `LIVE`.
  late final Output<String> coreNetworkId;

  /// Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  late final Output<String> policyDocument;

  /// Current state of a core network.
  late final Output<String> state;

  CoreNetworkPolicyAttachment(
    String name, {
    CoreNetworkPolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/coreNetworkPolicyAttachment:CoreNetworkPolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.state = registerOutput<String>('state');
  }
}
