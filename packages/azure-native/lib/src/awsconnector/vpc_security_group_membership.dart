// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VpcSecurityGroupMembership
class VpcSecurityGroupMembership {
  /// <p>The status of the VPC security group.</p>
  final String? status;
  /// <p>The VPC security group ID.</p>
  final String? vpcSecurityGroupId;

  /// Creates a new [VpcSecurityGroupMembership].
  /// [status] <p>The status of the VPC security group.</p>
  /// [vpcSecurityGroupId] <p>The VPC security group ID.</p>
  VpcSecurityGroupMembership({
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
      status: map['status'] == null ? null : map['status'] as String,
      vpcSecurityGroupId: map['vpcSecurityGroupId'] == null ? null : map['vpcSecurityGroupId'] as String,
    );
  }
}

