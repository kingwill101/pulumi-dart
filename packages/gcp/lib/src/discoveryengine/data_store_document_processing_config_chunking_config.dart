// ignore_for_file: unused_element, unnecessary_cast

import 'data_store_document_processing_config_chunking_config_layout_based_chunking_config.dart';

class DataStoreDocumentProcessingConfigChunkingConfig {
  /// Configuration for the layout based chunking.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig? layoutBasedChunkingConfig;

  /// Creates a new [DataStoreDocumentProcessingConfigChunkingConfig].
  /// [layoutBasedChunkingConfig] Configuration for the layout based chunking.
  DataStoreDocumentProcessingConfigChunkingConfig({
    this.layoutBasedChunkingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layoutBasedChunkingConfig': ?layoutBasedChunkingConfig == null ? null : layoutBasedChunkingConfig!.toMap(),
    };
  }

  factory DataStoreDocumentProcessingConfigChunkingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigChunkingConfig(
      layoutBasedChunkingConfig: map['layoutBasedChunkingConfig'] == null ? null : DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromMap((map['layoutBasedChunkingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

