// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how to handle de-identification of image pixels.
class ImageConfigResponseHealthcareV1beta1 {
  /// Additional InfoTypes to redact in the images in addition to those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT`, `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS` or `TEXT_REDACTION_MODE_UNSPECIFIED`.
  final List<String> additionalInfoTypes;

  /// InfoTypes to skip redacting, overriding those used by `text_redaction_mode`. Can only be used when `text_redaction_mode` is set to `REDACT_SENSITIVE_TEXT` or `REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS`.
  final List<String> excludeInfoTypes;

  /// Determines how to redact text from image.
  final String textRedactionMode;

  ImageConfigResponseHealthcareV1beta1({
    required this.additionalInfoTypes,
    required this.excludeInfoTypes,
    required this.textRedactionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalInfoTypes'] = additionalInfoTypes;
    map['excludeInfoTypes'] = excludeInfoTypes;
    map['textRedactionMode'] = textRedactionMode;
    return map;
  }

  factory ImageConfigResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ImageConfigResponseHealthcareV1beta1(
      additionalInfoTypes: (map['additionalInfoTypes'] as List).cast<String>(),
      excludeInfoTypes: (map['excludeInfoTypes'] as List).cast<String>(),
      textRedactionMode: map['textRedactionMode'] as String,
    );
  }
}
