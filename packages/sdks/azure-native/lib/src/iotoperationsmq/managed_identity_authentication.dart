// ignore_for_file: unused_element, unnecessary_cast


/// Managed identity authentication details.
class ManagedIdentityAuthentication {
  /// Token audience.
  final String audience;
  /// Arc Extension name.
  final String? extensionName;

  /// Creates a new [ManagedIdentityAuthentication].
  /// [audience] Token audience.
  /// [extensionName] Arc Extension name.
  ManagedIdentityAuthentication({
    required this.audience,
    this.extensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'extensionName': ?extensionName,
    };
  }

  factory ManagedIdentityAuthentication.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityAuthentication(
      audience: map['audience'] as String,
      extensionName: map['extensionName'] == null ? null : map['extensionName'] as String,
    );
  }
}

