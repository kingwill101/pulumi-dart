// ignore_for_file: unused_element, unnecessary_cast

class GetTableLocalSecondaryIndex {
  /// Name of the DynamoDB table.
  final String name;
  final List<String> nonKeyAttributes;
  final String projectionType;
  final String rangeKey;

  /// Creates a new [GetTableLocalSecondaryIndex].
  /// [name] Name of the DynamoDB table.
  /// [nonKeyAttributes] Required.
  /// [projectionType] Required.
  /// [rangeKey] Required.
  GetTableLocalSecondaryIndex({
    required this.name,
    required this.nonKeyAttributes,
    required this.projectionType,
    required this.rangeKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nonKeyAttributes': nonKeyAttributes,
      'projectionType': projectionType,
      'rangeKey': rangeKey,
    };
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
