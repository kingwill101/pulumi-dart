// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_linux_parameters.dart';
import 'input_windows_parameters.dart';

/// Input configuration for a patch run
class InputPatchConfiguration {
  /// Input parameters specific to patching Linux machine. For Windows machines, do not pass this property.
  final pulumi.Input<InputLinuxParameters>? linuxParameters;
  /// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  final pulumi.Input<String>? rebootSetting;
  /// Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property.
  final pulumi.Input<InputWindowsParameters>? windowsParameters;

  /// Creates a new [InputPatchConfiguration].
  /// [linuxParameters] Input parameters specific to patching Linux machine. For Windows machines, do not pass this property.
  /// [rebootSetting] Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  /// [windowsParameters] Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property.
  const InputPatchConfiguration({
    this.linuxParameters,
    this.rebootSetting,
    this.windowsParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxParameters': ?pulumi.Input.mapOptionalInputValue<InputLinuxParameters, Map<String, dynamic>>(linuxParameters, (value) => value.toMap()),
      'rebootSetting': ?rebootSetting,
      'windowsParameters': ?pulumi.Input.mapOptionalInputValue<InputWindowsParameters, Map<String, dynamic>>(windowsParameters, (value) => value.toMap()),
    };
  }

  factory InputPatchConfiguration.fromMap(Map<String, dynamic> map) {
    return InputPatchConfiguration(
      linuxParameters: (() { final guardedValue = map['linuxParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputLinuxParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rebootSetting: (() { final guardedValue = map['rebootSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowsParameters: (() { final guardedValue = map['windowsParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputWindowsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
