// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkAclAssociation.
class NetworkAclAssociationArgs {
  /// The ID of the network ACL.
  final Input<String> networkAclId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the associated Subnet.
  final Input<String> subnetId;

  NetworkAclAssociationArgs({
    required this.networkAclId,
    this.region,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkAclId'] = networkAclId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory NetworkAclAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclAssociationArgs(
      networkAclId: Input.asInput<String>(map['networkAclId']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetId: Input.asInput<String>(map['subnetId']),
    );
  }
}
