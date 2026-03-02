// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Resource ID for a Security Policy.
class SecurityPolicyLinkResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [SecurityPolicyLinkResponse].
  /// [id] Resource ID.
  SecurityPolicyLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SecurityPolicyLinkResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyLinkResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

