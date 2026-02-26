// ignore_for_file: unused_element, unnecessary_cast

import '../field_level_encryption_config_content_type_profile_config_content_type_profiles/field_level_encryption_config_content_type_profile_config_content_type_profiles.dart';

class FieldLevelEncryptionConfigContentTypeProfileConfig {
  /// Object that contains an attribute <span pulumi-lang-nodejs="`items`" pulumi-lang-dotnet="`Items`" pulumi-lang-go="`items`" pulumi-lang-python="`items`" pulumi-lang-yaml="`items`" pulumi-lang-java="`items`">`items`</span> that contains the list of configurations for a field-level encryption content type-profile. See Content Type Profile.
  final FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles
      contentTypeProfiles;

  /// specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown.
  final bool forwardWhenContentTypeIsUnknown;

  FieldLevelEncryptionConfigContentTypeProfileConfig({
    required this.contentTypeProfiles,
    required this.forwardWhenContentTypeIsUnknown,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentTypeProfiles'] = contentTypeProfiles.toMap();
    map['forwardWhenContentTypeIsUnknown'] = forwardWhenContentTypeIsUnknown;
    return map;
  }

  factory FieldLevelEncryptionConfigContentTypeProfileConfig.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigContentTypeProfileConfig(
      contentTypeProfiles:
          FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles
              .fromMap(
                  (map['contentTypeProfiles'] as Map).cast<String, dynamic>()),
      forwardWhenContentTypeIsUnknown:
          map['forwardWhenContentTypeIsUnknown'] as bool,
    );
  }
}
