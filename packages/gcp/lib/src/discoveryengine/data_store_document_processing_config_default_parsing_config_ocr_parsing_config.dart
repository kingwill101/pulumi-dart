// ignore_for_file: unused_element, unnecessary_cast

class DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final bool? useNativeText;

  /// Creates a new [DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig].
  /// [useNativeText] If true, will use native text instead of OCR text on pages containing native text.
  DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig({
    this.useNativeText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final useNativeTextValue = useNativeText;
    if (useNativeTextValue != null) {
      map['useNativeText'] = useNativeTextValue;
    }
    return map;
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap(
      Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig(
      useNativeText:
          map['useNativeText'] == null ? null : map['useNativeText'] as bool,
    );
  }
}
