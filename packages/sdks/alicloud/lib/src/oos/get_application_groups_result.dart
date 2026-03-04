// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_groups_group.dart';

/// Result data returned by getApplicationGroups.
class GetApplicationGroupsResult {
  final String applicationName;
  final String? deployRegionId;
  final List<GetApplicationGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetApplicationGroupsResult].
  /// [applicationName] Required.
  /// [deployRegionId] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetApplicationGroupsResult({
    required this.applicationName,
    this.deployRegionId,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'deployRegionId': ?deployRegionId,
      'groups':
          pulumi.Input.encodeList<
            GetApplicationGroupsGroup,
            Map<String, dynamic>
          >(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetApplicationGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupsResult(
      applicationName: map['applicationName'] as String,
      deployRegionId: (() {
        final guardedValue = map['deployRegionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groups: pulumi.Input.decodeList<GetApplicationGroupsGroup>(
        map['groups']!,
        (value) => GetApplicationGroupsGroup.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
