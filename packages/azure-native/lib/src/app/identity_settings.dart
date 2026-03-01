// ignore_for_file: unused_element, unnecessary_cast


/// Optional settings for a Managed Identity that is assigned to the Container App.
class IdentitySettings {
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final String identity;
  /// Use to select the lifecycle stages of a Container App during which the Managed Identity should be available.
  final String? lifecycle;

  /// Creates a new [IdentitySettings].
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [lifecycle] Use to select the lifecycle stages of a Container App during which the Managed Identity should be available.
  IdentitySettings({
    required this.identity,
    this.lifecycle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'lifecycle': ?lifecycle,
    };
  }

  factory IdentitySettings.fromMap(Map<String, dynamic> map) {
    return IdentitySettings(
      identity: map['identity'] as String,
      lifecycle: map['lifecycle'] == null ? null : map['lifecycle'] as String,
    );
  }
}

