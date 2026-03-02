// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_get_watcher_args_doc}
/// Arguments for getWatcher.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_get_watcher_args_doc}
class GetWatcherArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [GetWatcherArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watcherName] The database watcher name.
  GetWatcherArgs({
    required this.resourceGroupName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'watcherName': watcherName,
    };
  }

  factory GetWatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetWatcherArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      watcherName: (map['watcherName'] as String).input(),
    );
  }
}

