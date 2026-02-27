// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../field_level_encryption_config_query_arg_profile_config_query_arg_profiles_item/field_level_encryption_config_query_arg_profile_config_query_arg_profiles_item.dart';

class FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles {
  final List<
          FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem>?
      items;

  FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<
          FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<
                  FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem>(
              map['items'],
              (value) =>
                  FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
