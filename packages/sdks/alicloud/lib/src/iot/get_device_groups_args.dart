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
  GetDeviceGroupsArgs({
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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      iotInstanceId: map['iotInstanceId'] == null ? null : (map['iotInstanceId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      superGroupId: map['superGroupId'] == null ? null : (map['superGroupId']! as String).input(),
    );
  }
}

