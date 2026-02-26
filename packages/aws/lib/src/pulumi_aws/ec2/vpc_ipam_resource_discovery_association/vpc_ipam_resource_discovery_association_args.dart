// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcIpamResourceDiscoveryAssociation.
class VpcIpamResourceDiscoveryAssociationArgs {
  /// The ID of the IPAM to associate.
  final Input<String> ipamId;

  /// The ID of the Resource Discovery to associate.
  final Input<String> ipamResourceDiscoveryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to add to the IPAM resource discovery association resource.
  final Input<Map<String, String>>? tags;

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
      ipamId: Input.asInput<String>(map['ipamId']),
      ipamResourceDiscoveryId:
          Input.asInput<String>(map['ipamResourceDiscoveryId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
