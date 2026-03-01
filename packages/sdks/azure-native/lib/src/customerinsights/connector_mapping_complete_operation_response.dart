// ignore_for_file: unused_element, unnecessary_cast


/// The complete operation.
class ConnectorMappingCompleteOperationResponse {
  /// The type of completion operation.
  final String? completionOperationType;
  /// The destination folder where files will be moved to once the import is done.
  final String? destinationFolder;

  /// Creates a new [ConnectorMappingCompleteOperationResponse].
  /// [completionOperationType] The type of completion operation.
  /// [destinationFolder] The destination folder where files will be moved to once the import is done.
  ConnectorMappingCompleteOperationResponse({
    this.completionOperationType,
    this.destinationFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionOperationType': ?completionOperationType,
      'destinationFolder': ?destinationFolder,
    };
  }

  factory ConnectorMappingCompleteOperationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingCompleteOperationResponse(
      completionOperationType: map['completionOperationType'] == null ? null : map['completionOperationType'] as String,
      destinationFolder: map['destinationFolder'] == null ? null : map['destinationFolder'] as String,
    );
  }
}

