// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for the text.
class GoogleCloudDatalabelingV1beta1TextMetadata {
  /// The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  final String? languageCode;

  GoogleCloudDatalabelingV1beta1TextMetadata({
    this.languageCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1TextMetadata.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextMetadata(
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
    );
  }
}
