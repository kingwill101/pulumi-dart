// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalSecondaryIndexProjection {
  /// Specifies which additional attributes to include in the index.
  /// Only valid when `projection_type` is `INCLUDE`.`
  final pulumi.Input<List<String>>? nonKeyAttributes;
  /// The set of attributes represented in the index.
  /// One of `ALL`, `INCLUDE`, or `KEYS_ONLY`.
  final pulumi.Input<String> projectionType;

  /// Creates a new [GlobalSecondaryIndexProjection].
  /// [nonKeyAttributes] Specifies which additional attributes to include in the index.
  /// [projectionType] The set of attributes represented in the index.
  const GlobalSecondaryIndexProjection({
    this.nonKeyAttributes,
    required this.projectionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonKeyAttributes': ?nonKeyAttributes,
      'projectionType': projectionType,
    };
  }

  factory GlobalSecondaryIndexProjection.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexProjection(
      nonKeyAttributes: (() { final guardedValue = map['nonKeyAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      projectionType: pulumi.Input.fromValue(map['projectionType'] as String),
    );
  }
}

