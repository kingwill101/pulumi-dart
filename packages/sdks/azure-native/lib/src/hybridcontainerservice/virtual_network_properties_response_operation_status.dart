// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_error.dart';

/// The detailed status of the long running operation.
class VirtualNetworkPropertiesResponseOperationStatus {
  /// The error if any from the operation.
  final pulumi.Input<VirtualNetworkPropertiesResponseError>? error;
  /// The identifier of the operation.
  final pulumi.Input<String>? operationId;
  /// The status of the operation.
  final pulumi.Input<String>? status;

  /// Creates a new [VirtualNetworkPropertiesResponseOperationStatus].
  /// [error] The error if any from the operation.
  /// [operationId] The identifier of the operation.
  /// [status] The status of the operation.
  const VirtualNetworkPropertiesResponseOperationStatus({
    this.error,
    this.operationId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesResponseError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'operationId': ?operationId,
      'status': ?status,
    };
  }

  factory VirtualNetworkPropertiesResponseOperationStatus.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseOperationStatus(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesResponseError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
