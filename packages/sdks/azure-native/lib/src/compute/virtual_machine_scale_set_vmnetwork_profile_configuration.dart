// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_network_configuration.dart';

/// Describes a virtual machine scale set VM network profile.
class VirtualMachineScaleSetVMNetworkProfileConfiguration {
  /// The list of network configurations.
  final pulumi.Input<List<VirtualMachineScaleSetNetworkConfiguration>>? networkInterfaceConfigurations;

  /// Creates a new [VirtualMachineScaleSetVMNetworkProfileConfiguration].
  /// [networkInterfaceConfigurations] The list of network configurations.
  const VirtualMachineScaleSetVMNetworkProfileConfiguration({
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetNetworkConfiguration>, List<Map<String, dynamic>>>(networkInterfaceConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachineScaleSetVMNetworkProfileConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetVMNetworkProfileConfiguration(
      networkInterfaceConfigurations: (() { final guardedValue = map['networkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetNetworkConfiguration>(guardedValue, (value) => VirtualMachineScaleSetNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
