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
  FieldDefinition({
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
      isEncrypted: map['isEncrypted'] == null ? null : (map['isEncrypted']! as bool).input(),
      isOptional: map['isOptional'] == null ? null : (map['isOptional']! as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

