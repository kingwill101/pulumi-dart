// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_watcher_get_network_watcher_args_doc}
/// Arguments for getNetworkWatcher.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_watcher_get_network_watcher_args_doc}
class GetNetworkWatcherArgs {
  /// Specifies the Name of the Network Watcher.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Resource Group within which the Network Watcher exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkWatcherArgs].
  /// [name] Specifies the Name of the Network Watcher.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the Network Watcher exists.
  GetNetworkWatcherArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkWatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkWatcherArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

