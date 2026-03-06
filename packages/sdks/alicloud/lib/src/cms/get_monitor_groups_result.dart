// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_groups_group.dart';

/// Result data returned by getMonitorGroups.
class GetMonitorGroupsResult {
  final String? dynamicTagRuleId;
  final List<GetMonitorGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? includeTemplateHistory;
  final String? keyword;
  final String? monitorGroupName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final bool? selectContactGroups;
  final Map<String, String>? tags;
  final String? type;

  /// Creates a new [GetMonitorGroupsResult].
  /// [dynamicTagRuleId] Optional.
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [includeTemplateHistory] Optional.
  /// [keyword] Optional.
  /// [monitorGroupName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [selectContactGroups] Optional.
  /// [tags] Optional.
  /// [type] Optional.
  const GetMonitorGroupsResult({
    this.dynamicTagRuleId,
    required this.groups,
    required this.id,
    required this.ids,
    this.includeTemplateHistory,
    this.keyword,
    this.monitorGroupName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.selectContactGroups,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagRuleId': ?dynamicTagRuleId,
      'groups': pulumi.Input.encodeList<GetMonitorGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'includeTemplateHistory': ?includeTemplateHistory,
      'keyword': ?keyword,
      'monitorGroupName': ?monitorGroupName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'selectContactGroups': ?selectContactGroups,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMonitorGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupsResult(
      dynamicTagRuleId: (() { final guardedValue = map['dynamicTagRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groups: pulumi.Input.decodeList<GetMonitorGroupsGroup>(map['groups']!, (value) => GetMonitorGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeTemplateHistory: (() { final guardedValue = map['includeTemplateHistory']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitorGroupName: (() { final guardedValue = map['monitorGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selectContactGroups: (() { final guardedValue = map['selectContactGroups']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

