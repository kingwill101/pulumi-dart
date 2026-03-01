// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsServiceAccountTokenSettings properties.
class AkriConnectorsServiceAccountTokenSettingsResponse {
  /// The audience for the service account token.
  final String audience;

  /// Creates a new [AkriConnectorsServiceAccountTokenSettingsResponse].
  /// [audience] The audience for the service account token.
  AkriConnectorsServiceAccountTokenSettingsResponse({
    required this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
    };
  }

  factory AkriConnectorsServiceAccountTokenSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountTokenSettingsResponse(
      audience: map['audience'] as String,
    );
  }
}

