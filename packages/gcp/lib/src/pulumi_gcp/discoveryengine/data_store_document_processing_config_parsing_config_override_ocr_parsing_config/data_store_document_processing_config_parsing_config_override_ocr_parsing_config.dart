// ignore_for_file: unused_element, unnecessary_cast

class DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final bool? useNativeText;

  DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig({
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

  factory DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig.fromMap(
      Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig(
      useNativeText:
          map['useNativeText'] == null ? null : map['useNativeText'] as bool,
    );
  }
}
