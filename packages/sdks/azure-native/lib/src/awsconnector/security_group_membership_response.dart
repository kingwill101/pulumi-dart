// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SecurityGroupMembership
class SecurityGroupMembershipResponse {
  /// &lt;p&gt;The unique ID for this security group.&lt;/p&gt;
  final pulumi.Input<String>? securityGroupIdentifier;
  /// &lt;p&gt;The status of this security group.&lt;/p&gt;
  final pulumi.Input<String>? status;

  /// Creates a new [SecurityGroupMembershipResponse].
  /// [securityGroupIdentifier] &lt;p&gt;The unique ID for this security group.&lt;/p&gt;
  /// [status] &lt;p&gt;The status of this security group.&lt;/p&gt;
  const SecurityGroupMembershipResponse({
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
      securityGroupIdentifier: (() { final guardedValue = map['securityGroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
