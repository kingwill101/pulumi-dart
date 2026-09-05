// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_profile_encryption_entities_item.dart';

class FieldLevelEncryptionProfileEncryptionEntities {
  final pulumi.Input<List<FieldLevelEncryptionProfileEncryptionEntitiesItem>?>? items;

  /// Creates a new [FieldLevelEncryptionProfileEncryptionEntities].
  /// [items] Optional.
  const FieldLevelEncryptionProfileEncryptionEntities({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<FieldLevelEncryptionProfileEncryptionEntitiesItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<FieldLevelEncryptionProfileEncryptionEntitiesItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FieldLevelEncryptionProfileEncryptionEntities.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileEncryptionEntities(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldLevelEncryptionProfileEncryptionEntitiesItem>(guardedValue, (value) => FieldLevelEncryptionProfileEncryptionEntitiesItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
