// ignore_for_file: unused_element, unnecessary_cast

class GetTableLocalSecondaryIndex {
  /// Name of the DynamoDB table.
  final String name;
  final List<String> nonKeyAttributes;
  final String projectionType;
  final String rangeKey;

  GetTableLocalSecondaryIndex({
    required this.name,
    required this.nonKeyAttributes,
    required this.projectionType,
    required this.rangeKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['nonKeyAttributes'] = nonKeyAttributes;
    map['projectionType'] = projectionType;
    map['rangeKey'] = rangeKey;
    return map;
  }

  factory GetTableLocalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return GetTableLocalSecondaryIndex(
      name: map['name'] as String,
      nonKeyAttributes: (map['nonKeyAttributes'] as List).cast<String>(),
      projectionType: map['projectionType'] as String,
      rangeKey: map['rangeKey'] as String,
    );
  }
}
