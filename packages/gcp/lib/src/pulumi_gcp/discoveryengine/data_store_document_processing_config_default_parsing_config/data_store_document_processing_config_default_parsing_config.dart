// ignore_for_file: unused_element, unnecessary_cast

import '../data_store_document_processing_config_default_parsing_config_layout_parsing_config/data_store_document_processing_config_default_parsing_config_layout_parsing_config.dart';
import '../data_store_document_processing_config_default_parsing_config_ocr_parsing_config/data_store_document_processing_config_default_parsing_config_ocr_parsing_config.dart';

class DataStoreDocumentProcessingConfigDefaultParsingConfig {
  /// Configurations applied to digital parser.
  final Map<String, dynamic>? digitalParsingConfig;

  /// Configurations applied to layout parser.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig?
      layoutParsingConfig;

  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig?
      ocrParsingConfig;

  DataStoreDocumentProcessingConfigDefaultParsingConfig({
    this.digitalParsingConfig,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digitalParsingConfigValue = digitalParsingConfig;
    if (digitalParsingConfigValue != null) {
      map['digitalParsingConfig'] = digitalParsingConfigValue;
    }
    final layoutParsingConfigValue = layoutParsingConfig;
    if (layoutParsingConfigValue != null) {
      map['layoutParsingConfig'] = layoutParsingConfigValue.toMap();
    }
    final ocrParsingConfigValue = ocrParsingConfig;
    if (ocrParsingConfigValue != null) {
      map['ocrParsingConfig'] = ocrParsingConfigValue.toMap();
    }
    return map;
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap(
      Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfig(
      digitalParsingConfig: map['digitalParsingConfig'] == null
          ? null
          : (map['digitalParsingConfig'] as Map).cast<String, dynamic>(),
      layoutParsingConfig: map['layoutParsingConfig'] == null
          ? null
          : DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig
              .fromMap(
                  (map['layoutParsingConfig'] as Map).cast<String, dynamic>()),
      ocrParsingConfig: map['ocrParsingConfig'] == null
          ? null
          : DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig
              .fromMap(
                  (map['ocrParsingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
