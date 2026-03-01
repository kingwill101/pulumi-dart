// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Indicates the target Virtual Machine ScaleSet properties upon triggering a seamless migration without downtime of the VMs via the ConvertToVirtualMachineScaleSet API.
class DefaultVirtualMachineScaleSetInfoResponse {
  /// Indicates if the the maximum capacity of the default migrated Virtual Machine Scale Set after its migration will be constrained to a limited number of VMs.
  final bool constrainedMaximumCapacity;
  /// The default Virtual Machine ScaleSet Uri that the Availability Set will be moved to upon triggering a seamless migration via the ConvertToVirtualMachineScaleSet API.
  final SubResourceResponse defaultVirtualMachineScaleSet;

  /// Creates a new [DefaultVirtualMachineScaleSetInfoResponse].
  /// [constrainedMaximumCapacity] Indicates if the the maximum capacity of the default migrated Virtual Machine Scale Set after its migration will be constrained to a limited number of VMs.
  /// [defaultVirtualMachineScaleSet] The default Virtual Machine ScaleSet Uri that the Availability Set will be moved to upon triggering a seamless migration via the ConvertToVirtualMachineScaleSet API.
  DefaultVirtualMachineScaleSetInfoResponse({
    required this.constrainedMaximumCapacity,
    required this.defaultVirtualMachineScaleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constrainedMaximumCapacity': constrainedMaximumCapacity,
      'defaultVirtualMachineScaleSet': defaultVirtualMachineScaleSet.toMap(),
    };
  }

  factory DefaultVirtualMachineScaleSetInfoResponse.fromMap(Map<String, dynamic> map) {
    return DefaultVirtualMachineScaleSetInfoResponse(
      constrainedMaximumCapacity: map['constrainedMaximumCapacity'] as bool,
      defaultVirtualMachineScaleSet: SubResourceResponse.fromMap((map['defaultVirtualMachineScaleSet'] as Map).cast<String, dynamic>()),
    );
  }
}

