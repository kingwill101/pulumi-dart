// ignore_for_file: unused_element, unnecessary_cast

class TemplateTemplateMetadataMultiLanguageDetection {
  /// If true, multi language detection will be enabled.
  final bool enableMultiLanguageDetection;

  /// Creates a new [TemplateTemplateMetadataMultiLanguageDetection].
  /// [enableMultiLanguageDetection] If true, multi language detection will be enabled.
  TemplateTemplateMetadataMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableMultiLanguageDetection'] = enableMultiLanguageDetection;
    return map;
  }

  factory TemplateTemplateMetadataMultiLanguageDetection.fromMap(
      Map<String, dynamic> map) {
    return TemplateTemplateMetadataMultiLanguageDetection(
      enableMultiLanguageDetection: map['enableMultiLanguageDetection'] as bool,
    );
  }
}
