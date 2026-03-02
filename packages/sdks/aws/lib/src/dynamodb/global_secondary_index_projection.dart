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
  GlobalSecondaryIndexProjection({
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
      nonKeyAttributes: map['nonKeyAttributes'] == null ? null : ((map['nonKeyAttributes'] as List).cast<String>()).input(),
      projectionType: (map['projectionType'] as String).input(),
    );
  }
}

