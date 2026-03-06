// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_status_properties_response.dart';

/// Internal metadata of the connection inside pipeline.
class InternalMetadataPropertiesResponse {
  /// Operation status associated with the last patch request
  final pulumi.Input<OperationStatusPropertiesResponse>? operationStatus;
  /// User that last set the approved status for this connection
  final pulumi.Input<String> statusSetBy;

  /// Creates a new [InternalMetadataPropertiesResponse].
  /// [operationStatus] Operation status associated with the last patch request
  /// [statusSetBy] User that last set the approved status for this connection
  const InternalMetadataPropertiesResponse({
    this.operationStatus,
    required this.statusSetBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationStatus': ?pulumi.Input.mapOptionalInputValue<OperationStatusPropertiesResponse, Map<String, dynamic>>(operationStatus, (value) => value.toMap()),
      'statusSetBy': statusSetBy,
    };
  }

  factory InternalMetadataPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InternalMetadataPropertiesResponse(
      operationStatus: (() { final guardedValue = map['operationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperationStatusPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statusSetBy: pulumi.Input.fromValue(map['statusSetBy'] as String),
    );
  }
}

