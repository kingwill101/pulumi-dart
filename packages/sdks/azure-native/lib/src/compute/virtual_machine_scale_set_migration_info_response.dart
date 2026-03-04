// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_virtual_machine_scale_set_info_response.dart';
import 'sub_resource_response.dart';

/// Describes the Availability Set properties related to migration to Flexible Virtual Machine Scale Set.
class VirtualMachineScaleSetMigrationInfoResponse {
  /// Indicates the target Virtual Machine ScaleSet properties upon triggering a seamless migration without downtime of the VMs via the ConvertToVirtualMachineScaleSet API.
  final pulumi.Input<DefaultVirtualMachineScaleSetInfoResponse>
  defaultVirtualMachineScaleSetInfo;

  /// Specifies the Virtual Machine Scale Set that the Availability Set is migrated to.
  final pulumi.Input<SubResourceResponse> migrateToVirtualMachineScaleSet;

  /// Creates a new [VirtualMachineScaleSetMigrationInfoResponse].
  /// [defaultVirtualMachineScaleSetInfo] Indicates the target Virtual Machine ScaleSet properties upon triggering a seamless migration without downtime of the VMs via the ConvertToVirtualMachineScaleSet API.
  /// [migrateToVirtualMachineScaleSet] Specifies the Virtual Machine Scale Set that the Availability Set is migrated to.
  VirtualMachineScaleSetMigrationInfoResponse({
    required this.defaultVirtualMachineScaleSetInfo,
    required this.migrateToVirtualMachineScaleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVirtualMachineScaleSetInfo':
          pulumi.Input.mapInputValue<
            DefaultVirtualMachineScaleSetInfoResponse,
            Map<String, dynamic>
          >(defaultVirtualMachineScaleSetInfo, (value) => value.toMap()),
      'migrateToVirtualMachineScaleSet':
          pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(
            migrateToVirtualMachineScaleSet,
            (value) => value.toMap(),
          ),
    };
  }

  factory VirtualMachineScaleSetMigrationInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineScaleSetMigrationInfoResponse(
      defaultVirtualMachineScaleSetInfo: pulumi.Input.fromValue(
        DefaultVirtualMachineScaleSetInfoResponse.fromMap(
          (map['defaultVirtualMachineScaleSetInfo']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      migrateToVirtualMachineScaleSet: pulumi.Input.fromValue(
        SubResourceResponse.fromMap(
          (map['migrateToVirtualMachineScaleSet']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
