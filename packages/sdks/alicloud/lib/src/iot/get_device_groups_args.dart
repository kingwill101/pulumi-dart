// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_device_groups_get_device_groups_args_doc}
/// Arguments for getDeviceGroups.
/// {@endtemplate}
/// {@macro pulumi_iot_get_device_groups_get_device_groups_args_doc}
class GetDeviceGroupsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The GroupName of the device group.
  final pulumi.Input<String>? groupName;
  /// A list of device group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The id of the Iot Instance.
  final pulumi.Input<String>? iotInstanceId;
  /// A regex string to filter CEN instances by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The id of the SuperGroup.
  final pulumi.Input<String>? superGroupId;

  /// Creates a new [GetDeviceGroupsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [groupName] The GroupName of the device group.
  /// [ids] A list of device group IDs.
  /// [iotInstanceId] The id of the Iot Instance.
  /// [nameRegex] A regex string to filter CEN instances by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [superGroupId] The id of the SuperGroup.
  const GetDeviceGroupsArgs({
    this.enableDetails,
    this.groupName,
    this.ids,
    this.iotInstanceId,
    this.nameRegex,
    this.outputFile,
    this.superGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groupName': ?groupName,
      'ids': ?ids,
      'iotInstanceId': ?iotInstanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'superGroupId': ?superGroupId,
    };
  }

  factory GetDeviceGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceGroupsArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      iotInstanceId: (() { final guardedValue = map['iotInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      superGroupId: (() { final guardedValue = map['superGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

