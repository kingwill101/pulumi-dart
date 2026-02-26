// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CoreNetwork.
class CoreNetworkArgs {
  /// Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  final Input<String>? basePolicyDocument;

  /// List of regions to add to the base policy. The base policy created by setting the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> requires one or more regions to be set in the `edge-locations`, <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> key. If <span pulumi-lang-nodejs="`basePolicyRegions`" pulumi-lang-dotnet="`BasePolicyRegions`" pulumi-lang-go="`basePolicyRegions`" pulumi-lang-python="`base_policy_regions`" pulumi-lang-yaml="`basePolicyRegions`" pulumi-lang-java="`basePolicyRegions`">`base_policy_regions`</span> is not specified, the region used in the base policy defaults to the region specified in the <span pulumi-lang-nodejs="`provider`" pulumi-lang-dotnet="`Provider`" pulumi-lang-go="`provider`" pulumi-lang-python="`provider`" pulumi-lang-yaml="`provider`" pulumi-lang-java="`provider`">`provider`</span> block.
  final Input<List<String>>? basePolicyRegions;

  /// Whether to create a base policy when a core network is created or updated. A base policy is created and set to `LIVE` to allow attachments to the core network (e.g. VPC Attachments) before applying a policy document provided using the <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-go="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-python="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-yaml="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-java="`aws.networkmanager.CoreNetworkPolicyAttachment`">`aws.networkmanager.CoreNetworkPolicyAttachment`</span> resource. This base policy is needed if your core network does not have any `LIVE` policies and your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. An example of this Pulumi snippet can be found above for VPC Attachment in a single region and for VPC Attachment multi-region. An example base policy is shown below. This base policy is overridden with the policy that you specify in the <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-go="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-python="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-yaml="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-java="`aws.networkmanager.CoreNetworkPolicyAttachment`">`aws.networkmanager.CoreNetworkPolicyAttachment`</span> resource.
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

  /// Key-value tags for the Core Network. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
