// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Resource ID for a Security Policy.
class SecurityPolicyLinkResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [SecurityPolicyLinkResponse].
  /// [id] Resource ID.
  const SecurityPolicyLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SecurityPolicyLinkResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyLinkResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
