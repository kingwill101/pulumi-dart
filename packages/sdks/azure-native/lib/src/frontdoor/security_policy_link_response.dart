// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Resource ID for a Security Policy.
class SecurityPolicyLinkResponse {
  /// Resource ID.
  final String? id;

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
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

