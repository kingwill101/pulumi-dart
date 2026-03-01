// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_core_network_core_network_args_doc}
/// The set of arguments for CoreNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_core_network_core_network_args_doc}
class CoreNetworkArgs {
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
  /// Description of the Core Network.
  final pulumi.Input<String>? description;
  /// ID of the global network that a core network will be a part of.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalNetworkId;
  /// Key-value tags for the Core Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CoreNetworkArgs].
  /// [basePolicyDocument] Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  /// [basePolicyRegions] List of regions to add to the base policy. The base policy created by setting the `create_base_policy` argument to `true` requires one or more regions to be set in the `edge-locations`, `location` key. If `base_policy_regions` is not specified, the region used in the base policy defaults to the region specified in the `provider` block.
  /// [createBasePolicy] Whether to create a base policy when a core network is created or updated. A base policy is created and set to `LIVE` to allow attachments to the core network (e.g. VPC Attachments) before applying a policy document provided using the `aws.networkmanager.CoreNetworkPolicyAttachment` resource. This base policy is needed if your core network does not have any `LIVE` policies and your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Valid values are `true` or `false`. An example of this Pulumi snippet can be found above for VPC Attachment in a single region and for VPC Attachment multi-region. An example base policy is shown below. This base policy is overridden with the policy that you specify in the `aws.networkmanager.CoreNetworkPolicyAttachment` resource.
  /// [description] Description of the Core Network.
  /// [globalNetworkId] ID of the global network that a core network will be a part of.
  /// [tags] Key-value tags for the Core Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CoreNetworkArgs({
    pulumi.Output<String>? basePolicyDocument,
    pulumi.Output<List<String>>? basePolicyRegions,
    pulumi.Output<bool>? createBasePolicy,
    pulumi.Output<String>? description,
    required pulumi.Output<String> globalNetworkId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      basePolicyDocument = pulumi.Input.asOptionalInput<String>(basePolicyDocument),
      basePolicyRegions = pulumi.Input.asOptionalInput<List<String>>(basePolicyRegions),
      createBasePolicy = pulumi.Input.asOptionalInput<bool>(createBasePolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyDocument': ?basePolicyDocument,
      'basePolicyRegions': ?basePolicyRegions,
      'createBasePolicy': ?createBasePolicy,
      'description': ?description,
      'globalNetworkId': globalNetworkId,
      'tags': ?tags,
    };
  }

  factory CoreNetworkArgs.fromMap(Map<String, dynamic> map) {
    return CoreNetworkArgs(
      basePolicyDocument: map['basePolicyDocument'] == null ? null : pulumi.Output.create<String>(map['basePolicyDocument'] as String),
      basePolicyRegions: map['basePolicyRegions'] == null ? null : pulumi.Output.create<List<String>>((map['basePolicyRegions'] as List).cast<String>()),
      createBasePolicy: map['createBasePolicy'] == null ? null : pulumi.Output.create<bool>(map['createBasePolicy'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

