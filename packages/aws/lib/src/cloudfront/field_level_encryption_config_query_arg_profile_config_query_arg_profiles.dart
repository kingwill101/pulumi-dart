// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_query_arg_profile_config_query_arg_profiles_item.dart';

class FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles {
  final List<FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem>? items;

  /// Creates a new [FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles].
  /// [items] Optional.
  FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
    };
  }

  factory FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfiles(
      items: map['items'] == null ? null : pulumi.Input.decodeList<FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem>(map['items'], (value) => FieldLevelEncryptionConfigQueryArgProfileConfigQueryArgProfilesItem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

