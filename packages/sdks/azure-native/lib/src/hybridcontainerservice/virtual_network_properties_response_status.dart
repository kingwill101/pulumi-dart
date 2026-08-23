// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_operation_status.dart';

/// Status of the virtual network resource
class VirtualNetworkPropertiesResponseStatus {
  /// The detailed status of the long running operation.
  final pulumi.Input<VirtualNetworkPropertiesResponseOperationStatus>? operationStatus;

  /// Creates a new [VirtualNetworkPropertiesResponseStatus].
  /// [operationStatus] The detailed status of the long running operation.
  const VirtualNetworkPropertiesResponseStatus({
    this.operationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationStatus': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesResponseOperationStatus, Map<String, dynamic>>(operationStatus, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseStatus(
      operationStatus: (() { final guardedValue = map['operationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesResponseOperationStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
