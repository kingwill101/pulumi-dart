// ignore_for_file: unused_element, unnecessary_cast

import 'completion_operation_types.dart';

/// The complete operation.
class ConnectorMappingCompleteOperation {
  /// The type of completion operation.
  final CompletionOperationTypes? completionOperationType;
  /// The destination folder where files will be moved to once the import is done.
  final String? destinationFolder;

  /// Creates a new [ConnectorMappingCompleteOperation].
  /// [completionOperationType] The type of completion operation.
  /// [destinationFolder] The destination folder where files will be moved to once the import is done.
  ConnectorMappingCompleteOperation({
    this.completionOperationType,
    this.destinationFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionOperationType': ?completionOperationType == null ? null : completionOperationType!.value,
      'destinationFolder': ?destinationFolder,
    };
  }

  factory ConnectorMappingCompleteOperation.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingCompleteOperation(
      completionOperationType: map['completionOperationType'] == null ? null : CompletionOperationTypes.fromValue(map['completionOperationType'] as String),
      destinationFolder: map['destinationFolder'] == null ? null : map['destinationFolder'] as String,
    );
  }
}

