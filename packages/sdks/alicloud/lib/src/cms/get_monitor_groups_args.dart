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
  GetMonitorGroupsArgs({
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
      dynamicTagRuleId: map['dynamicTagRuleId'] == null ? null : (map['dynamicTagRuleId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      includeTemplateHistory: map['includeTemplateHistory'] == null ? null : (map['includeTemplateHistory'] as bool).input(),
      keyword: map['keyword'] == null ? null : (map['keyword'] as String).input(),
      monitorGroupName: map['monitorGroupName'] == null ? null : (map['monitorGroupName'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      selectContactGroups: map['selectContactGroups'] == null ? null : (map['selectContactGroups'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

