// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data stored in Optimized Row Columnar (ORC) format.
class OrcFormat {
  /// Deserializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? deserializer;

  /// Serializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serializer;

  /// Type of dataset storage format.
  /// Expected value is 'OrcFormat'.
  final pulumi.Input<String> type;

  /// Creates a new [OrcFormat].
  /// [deserializer] Deserializer. Type: string (or Expression with resultType string).
  /// [serializer] Serializer. Type: string (or Expression with resultType string).
  /// [type] Type of dataset storage format.
  OrcFormat({this.deserializer, this.serializer, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deserializer': ?deserializer,
      'serializer': ?serializer,
      'type': type,
    };
  }

  factory OrcFormat.fromMap(Map<String, dynamic> map) {
    return OrcFormat(
      deserializer: (() {
        final guardedValue = map['deserializer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      serializer: (() {
        final guardedValue = map['serializer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
