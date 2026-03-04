// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SecurityGroupMembership
class SecurityGroupMembership {
  /// &lt;p&gt;The unique ID for this security group.&lt;/p&gt;
  final pulumi.Input<String>? securityGroupIdentifier;

  /// &lt;p&gt;The status of this security group.&lt;/p&gt;
  final pulumi.Input<String>? status;

  /// Creates a new [SecurityGroupMembership].
  /// [securityGroupIdentifier] &lt;p&gt;The unique ID for this security group.&lt;/p&gt;
  /// [status] &lt;p&gt;The status of this security group.&lt;/p&gt;
  SecurityGroupMembership({this.securityGroupIdentifier, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIdentifier': ?securityGroupIdentifier,
      'status': ?status,
    };
  }

  factory SecurityGroupMembership.fromMap(Map<String, dynamic> map) {
    return SecurityGroupMembership(
      securityGroupIdentifier: (() {
        final guardedValue = map['securityGroupIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
