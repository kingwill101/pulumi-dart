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
  const GetTableLocalSecondaryIndex({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      nonKeyAttributes: pulumi.Input.fromValue((map['nonKeyAttributes'] as List).cast<String>()),
      projectionType: pulumi.Input.fromValue(map['projectionType'] as String),
      rangeKey: pulumi.Input.fromValue(map['rangeKey'] as String),
    );
  }
}

