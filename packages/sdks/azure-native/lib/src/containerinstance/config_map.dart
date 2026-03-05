// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container config map.
class ConfigMap {
  /// The key value pairs dictionary in the config map.
  final pulumi.Input<Map<String, String>>? keyValuePairs;

  /// Creates a new [ConfigMap].
  /// [keyValuePairs] The key value pairs dictionary in the config map.
  ConfigMap({
    this.keyValuePairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyValuePairs': ?keyValuePairs,
    };
  }

  factory ConfigMap.fromMap(Map<String, dynamic> map) {
    return ConfigMap(
      keyValuePairs: (() { final guardedValue = map['keyValuePairs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

