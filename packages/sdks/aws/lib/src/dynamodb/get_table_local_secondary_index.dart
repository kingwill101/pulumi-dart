// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableLocalSecondaryIndex {
  /// Name of the DynamoDB table.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> nonKeyAttributes;
  final pulumi.Input<String> projectionType;
  final pulumi.Input<String> rangeKey;

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
      name: (map['name'] as String).input(),
      nonKeyAttributes: ((map['nonKeyAttributes'] as List).cast<String>()).input(),
      projectionType: (map['projectionType'] as String).input(),
      rangeKey: (map['rangeKey'] as String).input(),
    );
  }
}

