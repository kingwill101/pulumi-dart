// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem {
  /// he content type for a field-level encryption content type-profile mapping. Valid value is `application/x-www-form-urlencoded`.
  final pulumi.Input<String> contentType;
  /// The format for a field-level encryption content type-profile mapping. Valid value is `URLEncoded`.
  final pulumi.Input<String> format;
  final pulumi.Input<String>? profileId;

  /// Creates a new [FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem].
  /// [contentType] he content type for a field-level encryption content type-profile mapping. Valid value is `application/x-www-form-urlencoded`.
  /// [format] The format for a field-level encryption content type-profile mapping. Valid value is `URLEncoded`.
  /// [profileId] Optional.
  FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem({
    required this.contentType,
    required this.format,
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'format': format,
      'profileId': ?profileId,
    };
  }

  factory FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem.fromMap(Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem(
      contentType: (map['contentType'] as String).input(),
      format: (map['format'] as String).input(),
      profileId: map['profileId'] == null ? null : ((map['profileId'] as String).input()).input(),
    );
  }
}

