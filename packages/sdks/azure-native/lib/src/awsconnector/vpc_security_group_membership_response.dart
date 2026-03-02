// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcSecurityGroupMembership
class VpcSecurityGroupMembershipResponse {
  /// <p>The status of the VPC security group.</p>
  final pulumi.Input<String>? status;
  /// <p>The VPC security group ID.</p>
  final pulumi.Input<String>? vpcSecurityGroupId;

  /// Creates a new [VpcSecurityGroupMembershipResponse].
  /// [status] <p>The status of the VPC security group.</p>
  /// [vpcSecurityGroupId] <p>The VPC security group ID.</p>
  VpcSecurityGroupMembershipResponse({
    this.status,
    this.vpcSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'vpcSecurityGroupId': ?vpcSecurityGroupId,
    };
  }

  factory VpcSecurityGroupMembershipResponse.fromMap(Map<String, dynamic> map) {
    return VpcSecurityGroupMembershipResponse(
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcSecurityGroupId: map['vpcSecurityGroupId'] == null ? null : (map['vpcSecurityGroupId']! as String).input(),
    );
  }
}

