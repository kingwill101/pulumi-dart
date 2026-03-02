// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableGlobalSecondaryIndexKeySchema {
  final pulumi.Input<String> attributeName;
  final pulumi.Input<String> keyType;

  /// Creates a new [GetTableGlobalSecondaryIndexKeySchema].
  /// [attributeName] Required.
  /// [keyType] Required.
  GetTableGlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'keyType': keyType,
    };
  }

  factory GetTableGlobalSecondaryIndexKeySchema.fromMap(Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndexKeySchema(
      attributeName: (map['attributeName'] as String).input(),
      keyType: (map['keyType'] as String).input(),
    );
  }
}

