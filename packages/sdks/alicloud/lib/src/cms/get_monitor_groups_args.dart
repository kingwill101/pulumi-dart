// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_monitor_groups_get_monitor_groups_args_doc}
/// Arguments for getMonitorGroups.
/// {@endtemplate}
/// {@macro pulumi_cms_get_monitor_groups_get_monitor_groups_args_doc}
class GetMonitorGroupsArgs {
  /// The ID of the tag rule.
  final pulumi.Input<String>? dynamicTagRuleId;
  /// A list of Monitor Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The include template history.
  final pulumi.Input<bool>? includeTemplateHistory;
  /// The keyword to be matched.
  final pulumi.Input<String>? keyword;
  /// The name of the application group.
  final pulumi.Input<String>? monitorGroupName;
  /// A regex string to filter results by Monitor Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The select contact groups.
  final pulumi.Input<bool>? selectContactGroups;
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the application group. Valid values: `custom`, `ehpc_cluster`, `kubernetes`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetMonitorGroupsArgs].
  /// [dynamicTagRuleId] The ID of the tag rule.
  /// [ids] A list of Monitor Group IDs.
  /// [includeTemplateHistory] The include template history.
  /// [keyword] The keyword to be matched.
  /// [monitorGroupName] The name of the application group.
  /// [nameRegex] A regex string to filter results by Monitor Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [selectContactGroups] The select contact groups.
  /// [tags] Optional.
  /// [type] The type of the application group. Valid values: `custom`, `ehpc_cluster`, `kubernetes`.
  const GetMonitorGroupsArgs({
    this.dynamicTagRuleId,
    this.ids,
    this.includeTemplateHistory,
    this.keyword,
    this.monitorGroupName,
    this.nameRegex,
    this.outputFile,
    this.selectContactGroups,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagRuleId': ?dynamicTagRuleId,
      'ids': ?ids,
      'includeTemplateHistory': ?includeTemplateHistory,
      'keyword': ?keyword,
      'monitorGroupName': ?monitorGroupName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'selectContactGroups': ?selectContactGroups,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMonitorGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupsArgs(
      dynamicTagRuleId: (() { final guardedValue = map['dynamicTagRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeTemplateHistory: (() { final guardedValue = map['includeTemplateHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorGroupName: (() { final guardedValue = map['monitorGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectContactGroups: (() { final guardedValue = map['selectContactGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

