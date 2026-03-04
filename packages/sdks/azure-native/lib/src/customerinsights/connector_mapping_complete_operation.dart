// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'completion_operation_types.dart';

/// The complete operation.
class ConnectorMappingCompleteOperation {
  /// The type of completion operation.
  final pulumi.Input<CompletionOperationTypes>? completionOperationType;

  /// The destination folder where files will be moved to once the import is done.
  final pulumi.Input<String>? destinationFolder;

  /// Creates a new [ConnectorMappingCompleteOperation].
  /// [completionOperationType] The type of completion operation.
  /// [destinationFolder] The destination folder where files will be moved to once the import is done.
  ConnectorMappingCompleteOperation({
    this.completionOperationType,
    this.destinationFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionOperationType':
          ?pulumi.Input.mapOptionalInputValue<CompletionOperationTypes, String>(
            completionOperationType,
            (value) => value.wireValue,
          ),
      'destinationFolder': ?destinationFolder,
    };
  }

  factory ConnectorMappingCompleteOperation.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingCompleteOperation(
      completionOperationType: (() {
        final guardedValue = map['completionOperationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompletionOperationTypes.fromValue(guardedValue as String),
        );
      })(),
      destinationFolder: (() {
        final guardedValue = map['destinationFolder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
