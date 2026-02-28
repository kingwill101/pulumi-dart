// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_document_processing_config_chunking_config.dart';
import 'data_store_document_processing_config_default_parsing_config.dart';
import 'data_store_document_processing_config_parsing_config_override.dart';

class DataStoreDocumentProcessingConfig {
  /// Whether chunking mode is enabled.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigChunkingConfig? chunkingConfig;
  /// Configurations for default Document parser. If not specified, this resource
  /// will be configured to use a default DigitalParsingConfig, and the default parsing
  /// config will be applied to all file types for Document parsing.
  /// Structure is documented below.
  final DataStoreDocumentProcessingConfigDefaultParsingConfig? defaultParsingConfig;
  /// (Output)
  /// The full resource name of the Document Processing Config. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/documentProcessingConfig`.
  final String? name;
  /// Map from file type to override the default parsing configuration based on the file type. Supported keys:
  final List<DataStoreDocumentProcessingConfigParsingConfigOverride>? parsingConfigOverrides;

  /// Creates a new [DataStoreDocumentProcessingConfig].
  /// [chunkingConfig] Whether chunking mode is enabled.
  /// [defaultParsingConfig] Configurations for default Document parser. If not specified, this resource
  /// [name] (Output)
  /// [parsingConfigOverrides] Map from file type to override the default parsing configuration based on the file type. Supported keys:
  DataStoreDocumentProcessingConfig({
    this.chunkingConfig,
    this.defaultParsingConfig,
    this.name,
    this.parsingConfigOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkingConfig': ?chunkingConfig == null ? null : chunkingConfig!.toMap(),
      'defaultParsingConfig': ?defaultParsingConfig == null ? null : defaultParsingConfig!.toMap(),
      'name': ?name,
      'parsingConfigOverrides': ?parsingConfigOverrides == null ? null : pulumi.Input.encodeList<DataStoreDocumentProcessingConfigParsingConfigOverride, Map<String, dynamic>>(parsingConfigOverrides!, (value) => value.toMap()),
    };
  }

  factory DataStoreDocumentProcessingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfig(
      chunkingConfig: map['chunkingConfig'] == null ? null : DataStoreDocumentProcessingConfigChunkingConfig.fromMap((map['chunkingConfig'] as Map).cast<String, dynamic>()),
      defaultParsingConfig: map['defaultParsingConfig'] == null ? null : DataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap((map['defaultParsingConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      parsingConfigOverrides: map['parsingConfigOverrides'] == null ? null : pulumi.Input.decodeList<DataStoreDocumentProcessingConfigParsingConfigOverride>(map['parsingConfigOverrides'], (value) => DataStoreDocumentProcessingConfigParsingConfigOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

