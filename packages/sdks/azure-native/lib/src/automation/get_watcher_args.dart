// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_watcher_args_doc}
/// Arguments for getWatcher.
/// {@endtemplate}
/// {@macro pulumi_automation_get_watcher_args_doc}
class GetWatcherArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [GetWatcherArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [watcherName] The watcher name.
  const GetWatcherArgs({
    required this.automationAccountName,
    required this.resourceGroupName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'watcherName': watcherName,
    };
  }

  factory GetWatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetWatcherArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      watcherName: pulumi.Input.fromValue(map['watcherName'] as String),
    );
  }
}

