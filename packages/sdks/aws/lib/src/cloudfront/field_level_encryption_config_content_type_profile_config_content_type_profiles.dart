// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_level_encryption_config_content_type_profile_config_content_type_profiles_item.dart';

class FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles {
  final pulumi.Input<List<FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem>> items;

  /// Creates a new [FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles].
  /// [items] Required.
  FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles(
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem>(map['items']!, (value) => FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

