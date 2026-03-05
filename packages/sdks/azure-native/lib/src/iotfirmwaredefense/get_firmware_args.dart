// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotfirmwaredefense_get_firmware_args_doc}
/// Arguments for getFirmware.
/// {@endtemplate}
/// {@macro pulumi_iotfirmwaredefense_get_firmware_args_doc}
class GetFirmwareArgs {
  /// The id of the firmware.
  final pulumi.Input<String> firmwareId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the firmware analysis workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetFirmwareArgs].
  /// [firmwareId] The id of the firmware.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the firmware analysis workspace.
  GetFirmwareArgs({
    required this.firmwareId,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firmwareId': firmwareId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetFirmwareArgs.fromMap(Map<String, dynamic> map) {
    return GetFirmwareArgs(
      firmwareId: pulumi.Input.fromValue(map['firmwareId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

