// ignore_for_file: unused_element, unnecessary_cast

import 'instance_view_status_response.dart';

/// The health status of the VM.
class VirtualMachineHealthStatusResponse {
  /// The health status information for the VM.
  final InstanceViewStatusResponse status;

  /// Creates a new [VirtualMachineHealthStatusResponse].
  /// [status] The health status information for the VM.
  VirtualMachineHealthStatusResponse({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status.toMap(),
    };
  }

  factory VirtualMachineHealthStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineHealthStatusResponse(
      status: InstanceViewStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

