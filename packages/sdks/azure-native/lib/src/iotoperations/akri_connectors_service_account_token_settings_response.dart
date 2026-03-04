// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsServiceAccountTokenSettings properties.
class AkriConnectorsServiceAccountTokenSettingsResponse {
  /// The audience for the service account token.
  final pulumi.Input<String> audience;

  /// Creates a new [AkriConnectorsServiceAccountTokenSettingsResponse].
  /// [audience] The audience for the service account token.
  AkriConnectorsServiceAccountTokenSettingsResponse({required this.audience});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audience': audience};
  }

  factory AkriConnectorsServiceAccountTokenSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AkriConnectorsServiceAccountTokenSettingsResponse(
      audience: pulumi.Input.fromValue(map['audience'] as String),
    );
  }
}
