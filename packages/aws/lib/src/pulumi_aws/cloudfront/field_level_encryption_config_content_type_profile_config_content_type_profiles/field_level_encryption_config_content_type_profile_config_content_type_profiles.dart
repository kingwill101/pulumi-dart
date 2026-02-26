// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../field_level_encryption_config_content_type_profile_config_content_type_profiles_item/field_level_encryption_config_content_type_profile_config_content_type_profiles_item.dart';

class FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles {
  final List<
          FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem>
      items;

  FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles(
      items: Input.decodeList<
              FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem>(
          map['items'],
          (value) =>
              FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
