// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns].
  /// [items] Optional.
  const FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileEncryptionEntitiesItemFieldPatterns(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

