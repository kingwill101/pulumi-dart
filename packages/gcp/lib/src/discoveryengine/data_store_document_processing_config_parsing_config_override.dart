// ignore_for_file: unused_element, unnecessary_cast

import 'data_store_document_processing_config_parsing_config_override_layout_parsing_config.dart';
import 'data_store_document_processing_config_parsing_config_override_ocr_parsing_config.dart';

class DataStoreDocumentProcessingConfigParsingConfigOverride {
  /// Configurations applied to digital parser.
  final Map<String, dynamic>? digitalParsingConfig;
  /// The identifier for this object. Format specified above.
  final String fileType;
  /// Configurations applied to layout parser.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig? layoutParsingConfig;
  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig? ocrParsingConfig;

  /// Creates a new [DataStoreDocumentProcessingConfigParsingConfigOverride].
  /// [digitalParsingConfig] Configurations applied to digital parser.
  /// [fileType] The identifier for this object. Format specified above.
  /// [layoutParsingConfig] Configurations applied to layout parser.
  /// [ocrParsingConfig] Configurations applied to OCR parser. Currently it only applies to PDFs.
  DataStoreDocumentProcessingConfigParsingConfigOverride({
    this.digitalParsingConfig,
    required this.fileType,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalParsingConfig': ?digitalParsingConfig,
      'fileType': fileType,
      'layoutParsingConfig': ?layoutParsingConfig == null ? null : layoutParsingConfig!.toMap(),
      'ocrParsingConfig': ?ocrParsingConfig == null ? null : ocrParsingConfig!.toMap(),
    };
  }

  factory DataStoreDocumentProcessingConfigParsingConfigOverride.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigParsingConfigOverride(
      digitalParsingConfig: map['digitalParsingConfig'] == null ? null : (map['digitalParsingConfig'] as Map).cast<String, dynamic>(),
      fileType: map['fileType'] as String,
      layoutParsingConfig: map['layoutParsingConfig'] == null ? null : DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig.fromMap((map['layoutParsingConfig'] as Map).cast<String, dynamic>()),
      ocrParsingConfig: map['ocrParsingConfig'] == null ? null : DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig.fromMap((map['ocrParsingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

