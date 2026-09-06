// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Json read settings.
class JsonReadSettings {
  /// Compression settings.
  final pulumi.Input<dynamic>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'JsonReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonReadSettings].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  const JsonReadSettings({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties,
      'type': type,
    };
  }

  factory JsonReadSettings.fromMap(Map<String, dynamic> map) {
    return JsonReadSettings(
      compressionProperties: (() { final guardedValue = map['compressionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
