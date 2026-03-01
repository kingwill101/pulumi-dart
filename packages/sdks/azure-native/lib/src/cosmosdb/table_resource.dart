// ignore_for_file: unused_element, unnecessary_cast

import 'resource_restore_parameters.dart';

/// Cosmos DB table resource object
class TableResource {
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Name of the Cosmos DB table
  final String id;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParameters? restoreParameters;

  /// Creates a new [TableResource].
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [id] Name of the Cosmos DB table
  /// [restoreParameters] Parameters to indicate the information about the restore
  TableResource({
    this.createMode,
    required this.id,
    this.restoreParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createMode': ?createMode,
      'id': id,
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
    };
  }

  factory TableResource.fromMap(Map<String, dynamic> map) {
    return TableResource(
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      id: map['id'] as String,
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

