// ignore_for_file: unused_element, unnecessary_cast


/// Managed identity authentication details.
class ManagedIdentityAuthenticationResponse {
  /// Token audience.
  final String audience;
  /// Arc Extension name.
  final String? extensionName;

  /// Creates a new [ManagedIdentityAuthenticationResponse].
  /// [audience] Token audience.
  /// [extensionName] Arc Extension name.
  ManagedIdentityAuthenticationResponse({
    required this.audience,
    this.extensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'extensionName': ?extensionName,
    };
  }

  factory ManagedIdentityAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthenticationResponse(
      audience: map['audience'] as String,
      extensionName: map['extensionName'] == null ? null : map['extensionName'] as String,
    );
  }
}

