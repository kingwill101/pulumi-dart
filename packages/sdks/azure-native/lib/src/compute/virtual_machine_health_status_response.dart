// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The health status of the VM.
class VirtualMachineHealthStatusResponse {
  /// The health status information for the VM.
  final pulumi.Input<InstanceViewStatusResponse> status;

  /// Creates a new [VirtualMachineHealthStatusResponse].
  /// [status] The health status information for the VM.
  const VirtualMachineHealthStatusResponse({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': pulumi.Input.mapInputValue<InstanceViewStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory VirtualMachineHealthStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineHealthStatusResponse(
      status: pulumi.Input.fromValue(InstanceViewStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}

