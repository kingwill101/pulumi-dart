// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_profile_encryption_entities_item.dart';

class FieldLevelEncryptionProfileEncryptionEntities {
  final List<FieldLevelEncryptionProfileEncryptionEntitiesItem>? items;

  /// Creates a new [FieldLevelEncryptionProfileEncryptionEntities].
  /// [items] Optional.
  FieldLevelEncryptionProfileEncryptionEntities({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<
          FieldLevelEncryptionProfileEncryptionEntitiesItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FieldLevelEncryptionProfileEncryptionEntities.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionProfileEncryptionEntities(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<
                  FieldLevelEncryptionProfileEncryptionEntitiesItem>(
              map['items'],
              (value) =>
                  FieldLevelEncryptionProfileEncryptionEntitiesItem.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
