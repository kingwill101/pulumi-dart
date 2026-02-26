// ignore_for_file: unused_element, unnecessary_cast

class GlobalSecondaryIndexProjection {
  /// Specifies which additional attributes to include in the index.
  /// Only valid when <span pulumi-lang-nodejs="`projectionType`" pulumi-lang-dotnet="`ProjectionType`" pulumi-lang-go="`projectionType`" pulumi-lang-python="`projection_type`" pulumi-lang-yaml="`projectionType`" pulumi-lang-java="`projectionType`">`projection_type`</span> is `INCLUDE`.`
  final List<String>? nonKeyAttributes;

  /// The set of attributes represented in the index.
  /// One of `ALL`, `INCLUDE`, or `KEYS_ONLY`.
  final String projectionType;

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
