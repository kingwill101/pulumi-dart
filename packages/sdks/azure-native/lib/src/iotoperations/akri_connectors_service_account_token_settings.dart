// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsServiceAccountTokenSettings properties.
class AkriConnectorsServiceAccountTokenSettings {
  /// The audience for the service account token.
  final pulumi.Input<String> audience;

  /// Creates a new [AkriConnectorsServiceAccountTokenSettings].
  /// [audience] The audience for the service account token.
  const AkriConnectorsServiceAccountTokenSettings({
    required this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
    };
  }

  factory AkriConnectorsServiceAccountTokenSettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountTokenSettings(
      audience: pulumi.Input.fromValue(map['audience'] as String),
    );
  }
}

