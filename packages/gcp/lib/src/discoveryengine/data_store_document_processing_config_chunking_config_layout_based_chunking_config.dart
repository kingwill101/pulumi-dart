// ignore_for_file: unused_element, unnecessary_cast

class DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig {
  /// The token size limit for each chunk.
  /// Supported values: 100-500 (inclusive). Default value: 500.
  final int? chunkSize;

  /// Whether to include appending different levels of headings to chunks from the middle of the document to prevent context loss.
  /// Default value: False.
  final bool? includeAncestorHeadings;

  /// Creates a new [DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig].
  /// [chunkSize] The token size limit for each chunk.
  /// [includeAncestorHeadings] Whether to include appending different levels of headings to chunks from the middle of the document to prevent context loss.
  DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig({
    this.chunkSize,
    this.includeAncestorHeadings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkSize': ?chunkSize,
      'includeAncestorHeadings': ?includeAncestorHeadings,
    };
  }

  factory DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig(
      chunkSize: map['chunkSize'] == null ? null : map['chunkSize'] as int,
      includeAncestorHeadings: map['includeAncestorHeadings'] == null
          ? null
          : map['includeAncestorHeadings'] as bool,
    );
  }
}
