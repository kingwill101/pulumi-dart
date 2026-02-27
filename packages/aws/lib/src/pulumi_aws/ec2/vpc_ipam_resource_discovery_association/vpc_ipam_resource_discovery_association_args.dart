// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcIpamResourceDiscoveryAssociation.
class VpcIpamResourceDiscoveryAssociationArgs {
  /// The ID of the IPAM to associate.
  final pulumi.Input<String> ipamId;

  /// The ID of the Resource Discovery to associate.
  final pulumi.Input<String> ipamResourceDiscoveryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to add to the IPAM resource discovery association resource.
  final pulumi.Input<Map<String, String>>? tags;

  VpcIpamResourceDiscoveryAssociationArgs({
    required this.ipamId,
    required this.ipamResourceDiscoveryId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipamId'] = ipamId;
    map['ipamResourceDiscoveryId'] = ipamResourceDiscoveryId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcIpamResourceDiscoveryAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryAssociationArgs(
      ipamId: pulumi.Input.asInput<String>(map['ipamId']),
      ipamResourceDiscoveryId:
          pulumi.Input.asInput<String>(map['ipamResourceDiscoveryId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
