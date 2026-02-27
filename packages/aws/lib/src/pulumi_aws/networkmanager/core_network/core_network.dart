import 'package:pulumi/pulumi.dart';
import '../core_network_edge/core_network_edge.dart';
import '../core_network_segment/core_network_segment.dart';
import 'core_network_args.dart';

/// Manages a Network Manager Core Network.
///
/// Use this resource to create and manage a core network within a global network.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With description
///
///
///
/// ### With tags
///
///
///
/// ### With VPC Attachment (Single Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the `create_base_policy` argument to `true` if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the `create_base_policy` argument. There are 2 options to implement this:
///
/// - Option 1: Use the `base_policy_document` argument that allows the most customizations to a base policy. Use this to customize the `edge_locations` `asn`. In the example below, `us-west-2` and ASN `65500` are used in the base policy.
/// - Option 2: Use the `create_base_policy` argument only. This creates a base policy in the region specified in the `provider` block.
///
/// ### Option 1 - using base_policy_document
///
/// If you require a custom ASN for the edge location, please use the `base_policy_document` argument to pass a specific ASN. For example:
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
/// - Option 2: Pass a list of regions to the `aws.networkmanager.CoreNetwork` `base_policy_regions` argument. In the example below, `us-west-2` and `us-east-1` are specified in the base policy.
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
/// Using `pulumi import`, import `aws.networkmanager.CoreNetwork` using the core network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/coreNetwork:CoreNetwork example core-network-0d47f6t230mz46dy4
/// ```
class CoreNetwork extends CustomResource {
  /// Core Network ARN.
  late final Output<String> arn;

  /// Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  late final Output<String?> basePolicyDocument;

  /// List of regions to add to the base policy. The base policy created by setting the `create_base_policy` argument to `true` requires one or more regions to be set in the `edge-locations`, `location` key. If `base_policy_regions` is not specified, the region used in the base policy defaults to the region specified in the `provider` block.
  late final Output<List<String>?> basePolicyRegions;

  /// Whether to create a base policy when a core network is created or updated. A base policy is created and set to `LIVE` to allow attachments to the core network (e.g. VPC Attachments) before applying a policy document provided using the `aws.networkmanager.CoreNetworkPolicyAttachment` resource. This base policy is needed if your core network does not have any `LIVE` policies and your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Valid values are `true` or `false`. An example of this Pulumi snippet can be found above for VPC Attachment in a single region and for VPC Attachment multi-region. An example base policy is shown below. This base policy is overridden with the policy that you specify in the `aws.networkmanager.CoreNetworkPolicyAttachment` resource.
  ///
  /// ```json
  /// {
  /// "version": "2021.12",
  /// "core-network-configuration": {
  /// "asn-ranges": [
  /// "64512-65534"
  /// ],
  /// "vpn-ecmp-support": false,
  /// "edge-locations": [
  /// {
  /// "location": "us-east-1"
  /// }
  /// ]
  /// },
  /// "segments": [
  /// {
  /// "name": "segment",
  /// "description": "base-policy",
  /// "isolate-attachments": false,
  /// "require-attachment-acceptance": false
  /// }
  /// ]
  /// }
  /// ```
  late final Output<bool?> createBasePolicy;

  /// Timestamp when a core network was created.
  late final Output<String> createdAt;

  /// Description of the Core Network.
  late final Output<String?> description;

  /// One or more blocks detailing the edges within a core network. Detailed below.
  late final Output<List<CoreNetworkEdge>> edges;

  /// ID of the global network that a core network will be a part of.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// One or more blocks detailing the segments within a core network. Detailed below.
  late final Output<List<CoreNetworkSegment>> segments;

  /// Current state of a core network.
  late final Output<String> state;

  /// Key-value tags for the Core Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CoreNetwork(
    String name, {
    CoreNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/coreNetwork:CoreNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.basePolicyDocument = registerOutput<String?>('basePolicyDocument');
    this.basePolicyRegions = registerOutput<List<String>?>('basePolicyRegions');
    this.createBasePolicy = registerOutput<bool?>('createBasePolicy');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.edges = registerOutput<List<CoreNetworkEdge>>('edges');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.segments = registerOutput<List<CoreNetworkSegment>>('segments');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
