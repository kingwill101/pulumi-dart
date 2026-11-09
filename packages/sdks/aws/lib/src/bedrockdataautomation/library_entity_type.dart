// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LibraryEntityType {
  /// JSON metadata for the entity type.
  final pulumi.Input<String> entityMetadata;
  /// Entity type, such as `VOCABULARY`.
  final pulumi.Input<String> entityType;

  /// Creates a new [LibraryEntityType].
  /// [entityMetadata] JSON metadata for the entity type.
  /// [entityType] Entity type, such as `VOCABULARY`.
  const LibraryEntityType({
    required this.entityMetadata,
    required this.entityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityMetadata': entityMetadata,
      'entityType': entityType,
    };
  }

  factory LibraryEntityType.fromMap(Map<String, dynamic> map) {
    return LibraryEntityType(
      entityMetadata: pulumi.Input.fromValue(map['entityMetadata'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
    );
  }
}
