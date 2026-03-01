// ignore_for_file: unused_element, unnecessary_cast

import 'operation_status_properties_response.dart';

/// Internal metadata of the connection inside pipeline.
class InternalMetadataPropertiesResponse {
  /// Operation status associated with the last patch request
  final OperationStatusPropertiesResponse? operationStatus;
  /// User that last set the approved status for this connection
  final String statusSetBy;

  /// Creates a new [InternalMetadataPropertiesResponse].
  /// [operationStatus] Operation status associated with the last patch request
  /// [statusSetBy] User that last set the approved status for this connection
  InternalMetadataPropertiesResponse({
    this.operationStatus,
    required this.statusSetBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationStatus': ?operationStatus == null ? null : operationStatus!.toMap(),
      'statusSetBy': statusSetBy,
    };
  }

  factory InternalMetadataPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InternalMetadataPropertiesResponse(
      operationStatus: map['operationStatus'] == null ? null : OperationStatusPropertiesResponse.fromMap((map['operationStatus'] as Map).cast<String, dynamic>()),
      statusSetBy: map['statusSetBy'] as String,
    );
  }
}

