// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_network_configuration_response.dart';

/// Describes a virtual machine scale set VM network profile.
class VirtualMachineScaleSetVMNetworkProfileConfigurationResponse {
  /// The list of network configurations.
  final pulumi.Input<List<VirtualMachineScaleSetNetworkConfigurationResponse>>?
  networkInterfaceConfigurations;

  /// Creates a new [VirtualMachineScaleSetVMNetworkProfileConfigurationResponse].
  /// [networkInterfaceConfigurations] The list of network configurations.
  VirtualMachineScaleSetVMNetworkProfileConfigurationResponse({
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualMachineScaleSetNetworkConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            networkInterfaceConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualMachineScaleSetNetworkConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualMachineScaleSetVMNetworkProfileConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineScaleSetVMNetworkProfileConfigurationResponse(
      networkInterfaceConfigurations: (() {
        final guardedValue = map['networkInterfaceConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            VirtualMachineScaleSetNetworkConfigurationResponse
          >(
            guardedValue,
            (value) =>
                VirtualMachineScaleSetNetworkConfigurationResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
