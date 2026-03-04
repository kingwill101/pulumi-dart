// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_groups_group.dart';

/// Result data returned by getDeviceGroups.
class GetDeviceGroupsResult {
  final bool? enableDetails;
  final String? groupName;
  final List<GetDeviceGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? iotInstanceId;
  final String? nameRegex;
  final String? outputFile;
  final String? superGroupId;

  /// Creates a new [GetDeviceGroupsResult].
  /// [enableDetails] Optional.
  /// [groupName] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [iotInstanceId] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [superGroupId] Optional.
  GetDeviceGroupsResult({
    this.enableDetails,
    this.groupName,
    required this.groups,
    required this.id,
    required this.ids,
    this.iotInstanceId,
    this.nameRegex,
    this.outputFile,
    this.superGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groupName': ?groupName,
      'groups':
          pulumi.Input.encodeList<GetDeviceGroupsGroup, Map<String, dynamic>>(
            groups,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'iotInstanceId': ?iotInstanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'superGroupId': ?superGroupId,
    };
  }

  factory GetDeviceGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceGroupsResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groups: pulumi.Input.decodeList<GetDeviceGroupsGroup>(
        map['groups']!,
        (value) => GetDeviceGroupsGroup.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      iotInstanceId: (() {
        final guardedValue = map['iotInstanceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      superGroupId: (() {
        final guardedValue = map['superGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
