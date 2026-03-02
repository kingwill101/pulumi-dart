// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container config map.
class ConfigMapResponse {
  /// The key value pairs dictionary in the config map.
  final pulumi.Input<Map<String, String>>? keyValuePairs;

  /// Creates a new [ConfigMapResponse].
  /// [keyValuePairs] The key value pairs dictionary in the config map.
  ConfigMapResponse({
    this.keyValuePairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyValuePairs': ?keyValuePairs,
    };
  }

  factory ConfigMapResponse.fromMap(Map<String, dynamic> map) {
    return ConfigMapResponse(
      keyValuePairs: map['keyValuePairs'] == null ? null : ((map['keyValuePairs']! as Map).cast<String, String>()).input(),
    );
  }
}

