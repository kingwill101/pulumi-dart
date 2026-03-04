// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_scale_set_extension.dart';

/// Describes a virtual machine scale set extension profile.
class VirtualMachineScaleSetExtensionProfile {
  /// The virtual machine scale set child extension resources.
  final pulumi.Input<List<VirtualMachineScaleSetExtension>>? extensions;

  /// Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  final pulumi.Input<String>? extensionsTimeBudget;

  /// Creates a new [VirtualMachineScaleSetExtensionProfile].
  /// [extensions] The virtual machine scale set child extension resources.
  /// [extensionsTimeBudget] Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum api-version: 2020-06-01.
  VirtualMachineScaleSetExtensionProfile({
    this.extensions,
    this.extensionsTimeBudget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualMachineScaleSetExtension>,
            List<Map<String, dynamic>>
          >(
            extensions,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualMachineScaleSetExtension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'extensionsTimeBudget': ?extensionsTimeBudget,
    };
  }

  factory VirtualMachineScaleSetExtensionProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineScaleSetExtensionProfile(
      extensions: (() {
        final guardedValue = map['extensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualMachineScaleSetExtension>(
            guardedValue,
            (value) => VirtualMachineScaleSetExtension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      extensionsTimeBudget: (() {
        final guardedValue = map['extensionsTimeBudget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
