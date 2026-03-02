// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'core_network_edge.dart';
import 'core_network_segment.dart';

/// Input properties used for looking up and filtering CoreNetwork resources.
class CoreNetworkState {
  /// Core Network ARN.
  final pulumi.Input<String>? arn;
  /// Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  final pulumi.Input<String>? basePolicyDocument;
  /// List of regions to add to the base policy. The base policy created by setting the `create_base_policy` argument to `true` requires one or more regions to be set in the `edge-locations`, `location` key. If `base_policy_regions` is not specified, the region used in the base policy defaults to the region specified in the `provider` block.
  final pulumi.Input<List<String>>? basePolicyRegions;
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
  final pulumi.Input<bool>? createBasePolicy;
  /// Timestamp when a core network was created.
  final pulumi.Input<String>? createdAt;
  /// Description of the Core Network.
  final pulumi.Input<String>? description;
  /// One or more blocks detailing the edges within a core network. Detailed below.
  final pulumi.Input<List<CoreNetworkEdge>>? edges;
  /// ID of the global network that a core network will be a part of.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? globalNetworkId;
  /// One or more blocks detailing the segments within a core network. Detailed below.
  final pulumi.Input<List<CoreNetworkSegment>>? segments;
  /// Current state of a core network.
  final pulumi.Input<String>? state;
  /// Key-value tags for the Core Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CoreNetworkState].
  /// [arn] Core Network ARN.
  /// [basePolicyDocument] Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  /// [basePolicyRegions] List of regions to add to the base policy. The base policy created by setting the `create_base_policy` argument to `true` requires one or more regions to be set in the `edge-locations`, `location` key. If `base_policy_regions` is not specified, the region used in the base policy defaults to the region specified in the `provider` block.
  /// [createBasePolicy] Whether to create a base policy when a core network is created or updated. A base policy is created and set to `LIVE` to allow attachments to the core network (e.g. VPC Attachments) before applying a policy document provided using the `aws.networkmanager.CoreNetworkPolicyAttachment` resource. This base policy is needed if your core network does not have any `LIVE` policies and your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Valid values are `true` or `false`. An example of this Pulumi snippet can be found above for VPC Attachment in a single region and for VPC Attachment multi-region. An example base policy is shown below. This base policy is overridden with the policy that you specify in the `aws.networkmanager.CoreNetworkPolicyAttachment` resource.
  /// [createdAt] Timestamp when a core network was created.
  /// [description] Description of the Core Network.
  /// [edges] One or more blocks detailing the edges within a core network. Detailed below.
  /// [globalNetworkId] ID of the global network that a core network will be a part of.
  /// [segments] One or more blocks detailing the segments within a core network. Detailed below.
  /// [state] Current state of a core network.
  /// [tags] Key-value tags for the Core Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CoreNetworkState({
    this.arn,
    this.basePolicyDocument,
    this.basePolicyRegions,
    this.createBasePolicy,
    this.createdAt,
    this.description,
    this.edges,
    this.globalNetworkId,
    this.segments,
    this.state,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'basePolicyDocument': ?basePolicyDocument,
      'basePolicyRegions': ?basePolicyRegions,
      'createBasePolicy': ?createBasePolicy,
      'createdAt': ?createdAt,
      'description': ?description,
      'edges': ?pulumi.Input.mapOptionalInputValue<List<CoreNetworkEdge>, List<Map<String, dynamic>>>(edges, (value) => pulumi.Input.encodeList<CoreNetworkEdge, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalNetworkId': ?globalNetworkId,
      'segments': ?pulumi.Input.mapOptionalInputValue<List<CoreNetworkSegment>, List<Map<String, dynamic>>>(segments, (value) => pulumi.Input.encodeList<CoreNetworkSegment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CoreNetworkState.fromMap(Map<String, dynamic> map) {
    return CoreNetworkState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      basePolicyDocument: map['basePolicyDocument'] == null ? null : ((map['basePolicyDocument'] as String).input()).input(),
      basePolicyRegions: map['basePolicyRegions'] == null ? null : (((map['basePolicyRegions'] as List).cast<String>()).input()).input(),
      createBasePolicy: map['createBasePolicy'] == null ? null : ((map['createBasePolicy'] as bool).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      edges: map['edges'] == null ? null : ((pulumi.Input.decodeList<CoreNetworkEdge>(map['edges']!, (value) => CoreNetworkEdge.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      globalNetworkId: map['globalNetworkId'] == null ? null : ((map['globalNetworkId'] as String).input()).input(),
      segments: map['segments'] == null ? null : ((pulumi.Input.decodeList<CoreNetworkSegment>(map['segments']!, (value) => CoreNetworkSegment.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

