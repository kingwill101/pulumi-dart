// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SecurityGroupMembership
class SecurityGroupMembershipResponse {
  /// <p>The unique ID for this security group.</p>
  final String? securityGroupIdentifier;
  /// <p>The status of this security group.</p>
  final String? status;

  /// Creates a new [SecurityGroupMembershipResponse].
  /// [securityGroupIdentifier] <p>The unique ID for this security group.</p>
  /// [status] <p>The status of this security group.</p>
  SecurityGroupMembershipResponse({
    this.securityGroupIdentifier,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIdentifier': ?securityGroupIdentifier,
      'status': ?status,
    };
  }

  factory SecurityGroupMembershipResponse.fromMap(Map<String, dynamic> map) {
    return SecurityGroupMembershipResponse(
      securityGroupIdentifier: map['securityGroupIdentifier'] == null ? null : map['securityGroupIdentifier'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

