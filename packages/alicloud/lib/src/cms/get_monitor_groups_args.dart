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
    String? dynamicTagRuleId,
    List<String>? ids,
    bool? includeTemplateHistory,
    String? keyword,
    String? monitorGroupName,
    String? nameRegex,
    String? outputFile,
    bool? selectContactGroups,
    Map<String, String>? tags,
    String? type,
  }) :
      dynamicTagRuleId = pulumi.Input.asOptionalInput<String>(dynamicTagRuleId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeTemplateHistory = pulumi.Input.asOptionalInput<bool>(includeTemplateHistory),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      monitorGroupName = pulumi.Input.asOptionalInput<String>(monitorGroupName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      selectContactGroups = pulumi.Input.asOptionalInput<bool>(selectContactGroups),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      dynamicTagRuleId: map['dynamicTagRuleId'] == null ? null : map['dynamicTagRuleId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      includeTemplateHistory: map['includeTemplateHistory'] == null ? null : map['includeTemplateHistory'] as bool,
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      monitorGroupName: map['monitorGroupName'] == null ? null : map['monitorGroupName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      selectContactGroups: map['selectContactGroups'] == null ? null : map['selectContactGroups'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

