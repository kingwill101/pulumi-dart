// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Binary read settings.
class BinaryReadSettings {
  /// Compression settings.
  final pulumi.Input<dynamic>? compressionProperties;
  /// The read setting type.
  /// Expected value is 'BinaryReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [BinaryReadSettings].
  /// [compressionProperties] Compression settings.
  /// [type] The read setting type.
  const BinaryReadSettings({
    this.compressionProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties,
      'type': type,
    };
  }

  factory BinaryReadSettings.fromMap(Map<String, dynamic> map) {
    return BinaryReadSettings(
      compressionProperties: (() { final guardedValue = map['compressionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
