// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CoreNetwork.
class CoreNetworkArgs {
  /// Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  final Input<String>? basePolicyDocument;

  /// List of regions to add to the base policy. The base policy created by setting the `create_base_policy` argument to `true` requires one or more regions to be set in the `edge-locations`, `location` key. If `base_policy_regions` is not specified, the region used in the base policy defaults to the region specified in the `provider` block.
  final Input<List<String>>? basePolicyRegions;

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
  final Input<bool>? createBasePolicy;

  /// Description of the Core Network.
  final Input<String>? description;

  /// ID of the global network that a core network will be a part of.
  ///
  /// The following arguments are optional:
  final Input<String> globalNetworkId;

  /// Key-value tags for the Core Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CoreNetworkArgs({
    this.basePolicyDocument,
    this.basePolicyRegions,
    this.createBasePolicy,
    this.description,
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basePolicyDocumentValue = basePolicyDocument;
    if (basePolicyDocumentValue != null) {
      map['basePolicyDocument'] = basePolicyDocumentValue;
    }
    final basePolicyRegionsValue = basePolicyRegions;
    if (basePolicyRegionsValue != null) {
      map['basePolicyRegions'] = basePolicyRegionsValue;
    }
    final createBasePolicyValue = createBasePolicy;
    if (createBasePolicyValue != null) {
      map['createBasePolicy'] = createBasePolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CoreNetworkArgs.fromMap(Map<String, dynamic> map) {
    return CoreNetworkArgs(
      basePolicyDocument:
          Input.asOptionalInput<String>(map['basePolicyDocument']),
      basePolicyRegions:
          Input.asOptionalInput<List<String>>(map['basePolicyRegions']),
      createBasePolicy: Input.asOptionalInput<bool>(map['createBasePolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
