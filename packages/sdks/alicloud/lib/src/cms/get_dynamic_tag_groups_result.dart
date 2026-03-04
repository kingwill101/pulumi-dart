// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dynamic_tag_groups_group.dart';

/// Result data returned by getDynamicTagGroups.
class GetDynamicTagGroupsResult {
  final List<GetDynamicTagGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;
  final String? tagKey;

  /// Creates a new [GetDynamicTagGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [tagKey] Optional.
  GetDynamicTagGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    this.tagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups':
          pulumi.Input.encodeList<
            GetDynamicTagGroupsGroup,
            Map<String, dynamic>
          >(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'tagKey': ?tagKey,
    };
  }

  factory GetDynamicTagGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetDynamicTagGroupsResult(
      groups: pulumi.Input.decodeList<GetDynamicTagGroupsGroup>(
        map['groups']!,
        (value) => GetDynamicTagGroupsGroup.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tagKey: (() {
        final guardedValue = map['tagKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
