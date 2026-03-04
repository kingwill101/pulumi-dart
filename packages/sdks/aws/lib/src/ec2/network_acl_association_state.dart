// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkAclAssociation resources.
class NetworkAclAssociationState {
  /// The ID of the network ACL.
  final pulumi.Input<String>? networkAclId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the associated Subnet.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [NetworkAclAssociationState].
  /// [networkAclId] The ID of the network ACL.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the associated Subnet.
  NetworkAclAssociationState({this.networkAclId, this.region, this.subnetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclId': ?networkAclId,
      'region': ?region,
      'subnetId': ?subnetId,
    };
  }

  factory NetworkAclAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkAclAssociationState(
      networkAclId: (() {
        final guardedValue = map['networkAclId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
