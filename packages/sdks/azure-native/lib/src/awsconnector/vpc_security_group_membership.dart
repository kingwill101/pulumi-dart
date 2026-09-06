// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcSecurityGroupMembership
class VpcSecurityGroupMembership {
  /// &lt;p&gt;The status of the VPC security group.&lt;/p&gt;
  final pulumi.Input<String?>? status;
  /// &lt;p&gt;The VPC security group ID.&lt;/p&gt;
  final pulumi.Input<String?>? vpcSecurityGroupId;

  /// Creates a new [VpcSecurityGroupMembership].
  /// [status] &lt;p&gt;The status of the VPC security group.&lt;/p&gt;
  /// [vpcSecurityGroupId] &lt;p&gt;The VPC security group ID.&lt;/p&gt;
  const VpcSecurityGroupMembership({
    this.status,
    this.vpcSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'vpcSecurityGroupId': ?vpcSecurityGroupId,
    };
  }

  factory VpcSecurityGroupMembership.fromMap(Map<String, dynamic> map) {
    return VpcSecurityGroupMembership(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSecurityGroupId: (() { final guardedValue = map['vpcSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
