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
    bool? enableDetails,
    String? groupName,
    List<String>? ids,
    String? iotInstanceId,
    String? nameRegex,
    String? outputFile,
    String? superGroupId,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      iotInstanceId = pulumi.Input.asOptionalInput<String>(iotInstanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      superGroupId = pulumi.Input.asOptionalInput<String>(superGroupId);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      iotInstanceId: map['iotInstanceId'] == null ? null : map['iotInstanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      superGroupId: map['superGroupId'] == null ? null : map['superGroupId'] as String,
    );
  }
}

