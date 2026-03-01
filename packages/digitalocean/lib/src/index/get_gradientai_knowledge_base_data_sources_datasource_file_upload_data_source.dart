// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource {
  /// The original name of the uploaded file
  final String? originalFileName;
  /// The size of the file in bytes
  final String? sizeInBytes;
  /// The stored object key for the file
  final String? storedObjectKey;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource].
  /// [originalFileName] The original name of the uploaded file
  /// [sizeInBytes] The size of the file in bytes
  /// [storedObjectKey] The stored object key for the file
  GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource({
    this.originalFileName,
    this.sizeInBytes,
    this.storedObjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalFileName': ?originalFileName,
      'sizeInBytes': ?sizeInBytes,
      'storedObjectKey': ?storedObjectKey,
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource(
      originalFileName: map['originalFileName'] == null ? null : map['originalFileName'] as String,
      sizeInBytes: map['sizeInBytes'] == null ? null : map['sizeInBytes'] as String,
      storedObjectKey: map['storedObjectKey'] == null ? null : map['storedObjectKey'] as String,
    );
  }
}

