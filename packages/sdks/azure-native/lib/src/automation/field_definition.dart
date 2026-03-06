// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the connection fields.
class FieldDefinition {
  /// Gets or sets the isEncrypted flag of the connection field definition.
  final pulumi.Input<bool>? isEncrypted;
  /// Gets or sets the isOptional flag of the connection field definition.
  final pulumi.Input<bool>? isOptional;
  /// Gets or sets the type of the connection field definition.
  final pulumi.Input<String> type;

  /// Creates a new [FieldDefinition].
  /// [isEncrypted] Gets or sets the isEncrypted flag of the connection field definition.
  /// [isOptional] Gets or sets the isOptional flag of the connection field definition.
  /// [type] Gets or sets the type of the connection field definition.
  const FieldDefinition({
    this.isEncrypted,
    this.isOptional,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEncrypted': ?isEncrypted,
      'isOptional': ?isOptional,
      'type': type,
    };
  }

  factory FieldDefinition.fromMap(Map<String, dynamic> map) {
    return FieldDefinition(
      isEncrypted: (() { final guardedValue = map['isEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isOptional: (() { final guardedValue = map['isOptional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

