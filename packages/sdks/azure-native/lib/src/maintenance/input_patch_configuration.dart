// ignore_for_file: unused_element, unnecessary_cast

import 'input_linux_parameters.dart';
import 'input_windows_parameters.dart';

/// Input configuration for a patch run
class InputPatchConfiguration {
  /// Input parameters specific to patching Linux machine. For Windows machines, do not pass this property.
  final InputLinuxParameters? linuxParameters;
  /// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  final String? rebootSetting;
  /// Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property.
  final InputWindowsParameters? windowsParameters;

  /// Creates a new [InputPatchConfiguration].
  /// [linuxParameters] Input parameters specific to patching Linux machine. For Windows machines, do not pass this property.
  /// [rebootSetting] Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  /// [windowsParameters] Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property.
  InputPatchConfiguration({
    this.linuxParameters,
    this.rebootSetting,
    this.windowsParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxParameters': ?linuxParameters == null ? null : linuxParameters!.toMap(),
      'rebootSetting': ?rebootSetting,
      'windowsParameters': ?windowsParameters == null ? null : windowsParameters!.toMap(),
    };
  }

  factory InputPatchConfiguration.fromMap(Map<String, dynamic> map) {
    return InputPatchConfiguration(
      linuxParameters: map['linuxParameters'] == null ? null : InputLinuxParameters.fromMap((map['linuxParameters'] as Map).cast<String, dynamic>()),
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
      windowsParameters: map['windowsParameters'] == null ? null : InputWindowsParameters.fromMap((map['windowsParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

