// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container config map.
class ConfigMapResponse {
  /// The key value pairs dictionary in the config map.
  final pulumi.Input<Map<String, String>>? keyValuePairs;

  /// Creates a new [ConfigMapResponse].
  /// [keyValuePairs] The key value pairs dictionary in the config map.
  const ConfigMapResponse({
    this.keyValuePairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyValuePairs': ?keyValuePairs,
    };
  }

  factory ConfigMapResponse.fromMap(Map<String, dynamic> map) {
    return ConfigMapResponse(
      keyValuePairs: (() { final guardedValue = map['keyValuePairs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

