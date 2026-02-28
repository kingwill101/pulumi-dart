// ignore_for_file: unused_element, unnecessary_cast

class FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem {
  /// he content type for a field-level encryption content type-profile mapping. Valid value is `application/x-www-form-urlencoded`.
  final String contentType;

  /// The format for a field-level encryption content type-profile mapping. Valid value is `URLEncoded`.
  final String format;
  final String? profileId;

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
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    map['format'] = format;
    final profileIdValue = profileId;
    if (profileIdValue != null) {
      map['profileId'] = profileIdValue;
    }
    return map;
  }

  factory FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem.fromMap(
      Map<String, dynamic> map) {
    return FieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItem(
      contentType: map['contentType'] as String,
      format: map['format'] as String,
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
    );
  }
}
