// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SecurityGroupMembership
class SecurityGroupMembership {
  /// <p>The unique ID for this security group.</p>
  final String? securityGroupIdentifier;
  /// <p>The status of this security group.</p>
  final String? status;

  /// Creates a new [SecurityGroupMembership].
  /// [securityGroupIdentifier] <p>The unique ID for this security group.</p>
  /// [status] <p>The status of this security group.</p>
  SecurityGroupMembership({
    this.securityGroupIdentifier,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIdentifier': ?securityGroupIdentifier,
      'status': ?status,
    };
  }

  factory SecurityGroupMembership.fromMap(Map<String, dynamic> map) {
    return SecurityGroupMembership(
      securityGroupIdentifier: map['securityGroupIdentifier'] == null ? null : map['securityGroupIdentifier'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

