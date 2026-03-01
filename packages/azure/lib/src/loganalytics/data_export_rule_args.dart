// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_data_export_rule_data_export_rule_args_doc}
/// The set of arguments for DataExportRule.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_data_export_rule_data_export_rule_args_doc}
class DataExportRuleArgs {
  /// The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  final pulumi.Input<String> destinationResourceId;
  /// Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  /// The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  final pulumi.Input<List<String>> tableNames;
  /// The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  final pulumi.Input<String> workspaceResourceId;

  /// Creates a new [DataExportRuleArgs].
  /// [destinationResourceId] The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  /// [enabled] Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  /// [name] The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  /// [tableNames] A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  /// [workspaceResourceId] The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  DataExportRuleArgs({
    required String destinationResourceId,
    bool? enabled,
    String? name,
    required String resourceGroupName,
    required List<String> tableNames,
    required String workspaceResourceId,
  }) :
      destinationResourceId = pulumi.Input.asInput<String>(destinationResourceId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableNames = pulumi.Input.asInput<List<String>>(tableNames),
      workspaceResourceId = pulumi.Input.asInput<String>(workspaceResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationResourceId': destinationResourceId,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tableNames': tableNames,
      'workspaceResourceId': workspaceResourceId,
    };
  }

  factory DataExportRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataExportRuleArgs(
      destinationResourceId: map['destinationResourceId'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tableNames: (map['tableNames'] as List).cast<String>(),
      workspaceResourceId: map['workspaceResourceId'] as String,
    );
  }
}

