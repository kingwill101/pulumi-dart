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
  NetworkAclAssociationState({
    pulumi.Output<String>? networkAclId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
  }) :
      networkAclId = pulumi.Input.asOptionalInput<String>(networkAclId),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAclId': ?networkAclId,
      'region': ?region,
      'subnetId': ?subnetId,
    };
  }

  factory NetworkAclAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkAclAssociationState(
      networkAclId: map['networkAclId'] == null ? null : pulumi.Output.create<String>(map['networkAclId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

