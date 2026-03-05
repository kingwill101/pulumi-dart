// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_groups_group.dart';

/// Result data returned by getScalingGroups.
class GetScalingGroupsResult {
  /// A list of scaling groups. Each element contains the following attributes:
  final List<GetScalingGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of scaling group ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of scaling group names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetScalingGroupsResult].
  /// [groups] A list of scaling groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of scaling group ids.
  /// [nameRegex] Optional.
  /// [names] A list of scaling group names.
  /// [outputFile] Optional.
  GetScalingGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetScalingGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetScalingGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetScalingGroupsResult(
      groups: pulumi.Input.decodeList<GetScalingGroupsGroup>(map['groups']!, (value) => GetScalingGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

