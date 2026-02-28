// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for the text.
class GoogleCloudDatalabelingV1beta1TextMetadata {
  /// The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  final String? languageCode;

  /// Creates a new [GoogleCloudDatalabelingV1beta1TextMetadata].
  /// [languageCode] The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US.
  GoogleCloudDatalabelingV1beta1TextMetadata({
    this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': ?languageCode,
    };
  }

  factory GoogleCloudDatalabelingV1beta1TextMetadata.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextMetadata(
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
    );
  }
}

