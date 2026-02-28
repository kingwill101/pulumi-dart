// ignore_for_file: unused_element, unnecessary_cast

class GlobalSecondaryIndexProjection {
  /// Specifies which additional attributes to include in the index.
  /// Only valid when `projection_type` is `INCLUDE`.`
  final List<String>? nonKeyAttributes;

  /// The set of attributes represented in the index.
  /// One of `ALL`, `INCLUDE`, or `KEYS_ONLY`.
  final String projectionType;

  /// Creates a new [GlobalSecondaryIndexProjection].
  /// [nonKeyAttributes] Specifies which additional attributes to include in the index.
  /// [projectionType] The set of attributes represented in the index.
  GlobalSecondaryIndexProjection({
    this.nonKeyAttributes,
    required this.projectionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nonKeyAttributesValue = nonKeyAttributes;
    if (nonKeyAttributesValue != null) {
      map['nonKeyAttributes'] = nonKeyAttributesValue;
    }
    map['projectionType'] = projectionType;
    return map;
  }

  factory GlobalSecondaryIndexProjection.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexProjection(
      nonKeyAttributes: map['nonKeyAttributes'] == null
          ? null
          : (map['nonKeyAttributes'] as List).cast<String>(),
      projectionType: map['projectionType'] as String,
    );
  }
}
