// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_linux_parameters_response.dart';
import 'input_windows_parameters_response.dart';

/// Input configuration for a patch run
class InputPatchConfigurationResponse {
  /// Input parameters specific to patching Linux machine. For Windows machines, do not pass this property.
  final pulumi.Input<InputLinuxParametersResponse>? linuxParameters;
  /// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  final pulumi.Input<String>? rebootSetting;
  /// Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property.
  final pulumi.Input<InputWindowsParametersResponse>? windowsParameters;

  /// Creates a new [InputPatchConfigurationResponse].
  /// [linuxParameters] Input parameters specific to patching Linux machine. For Windows machines, do not pass this property.
  /// [rebootSetting] Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  /// [windowsParameters] Input parameters specific to patching a Windows machine. For Linux machines, do not pass this property.
  const InputPatchConfigurationResponse({
    this.linuxParameters,
    this.rebootSetting,
    this.windowsParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxParameters': ?pulumi.Input.mapOptionalInputValue<InputLinuxParametersResponse, Map<String, dynamic>>(linuxParameters, (value) => value.toMap()),
      'rebootSetting': ?rebootSetting,
      'windowsParameters': ?pulumi.Input.mapOptionalInputValue<InputWindowsParametersResponse, Map<String, dynamic>>(windowsParameters, (value) => value.toMap()),
    };
  }

  factory InputPatchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return InputPatchConfigurationResponse(
      linuxParameters: (() { final guardedValue = map['linuxParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputLinuxParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rebootSetting: (() { final guardedValue = map['rebootSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowsParameters: (() { final guardedValue = map['windowsParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputWindowsParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

