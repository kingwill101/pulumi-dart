// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsServiceAccountTokenSettings properties.
class AkriConnectorsServiceAccountTokenSettings {
  /// The audience for the service account token.
  final String audience;

  /// Creates a new [AkriConnectorsServiceAccountTokenSettings].
  /// [audience] The audience for the service account token.
  AkriConnectorsServiceAccountTokenSettings({
    required this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
    };
  }

  factory AkriConnectorsServiceAccountTokenSettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountTokenSettings(
      audience: map['audience'] as String,
    );
  }
}

