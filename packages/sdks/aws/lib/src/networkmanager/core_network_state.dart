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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? basePolicyDocument,
    pulumi.Output<List<String>>? basePolicyRegions,
    pulumi.Output<bool>? createBasePolicy,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<List<CoreNetworkEdge>>? edges,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<List<CoreNetworkSegment>>? segments,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      basePolicyDocument = pulumi.Input.asOptionalInput<String>(basePolicyDocument),
      basePolicyRegions = pulumi.Input.asOptionalInput<List<String>>(basePolicyRegions),
      createBasePolicy = pulumi.Input.asOptionalInput<bool>(createBasePolicy),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      edges = pulumi.Input.asOptionalInput<List<CoreNetworkEdge>>(edges),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      segments = pulumi.Input.asOptionalInput<List<CoreNetworkSegment>>(segments),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      basePolicyDocument: map['basePolicyDocument'] == null ? null : pulumi.Output.create<String>(map['basePolicyDocument'] as String),
      basePolicyRegions: map['basePolicyRegions'] == null ? null : pulumi.Output.create<List<String>>((map['basePolicyRegions'] as List).cast<String>()),
      createBasePolicy: map['createBasePolicy'] == null ? null : pulumi.Output.create<bool>(map['createBasePolicy'] as bool),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      edges: map['edges'] == null ? null : pulumi.Output.create<List<CoreNetworkEdge>>(pulumi.Input.decodeList<CoreNetworkEdge>(map['edges'], (value) => CoreNetworkEdge.fromMap((value as Map).cast<String, dynamic>()))),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      segments: map['segments'] == null ? null : pulumi.Output.create<List<CoreNetworkSegment>>(pulumi.Input.decodeList<CoreNetworkSegment>(map['segments'], (value) => CoreNetworkSegment.fromMap((value as Map).cast<String, dynamic>()))),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

