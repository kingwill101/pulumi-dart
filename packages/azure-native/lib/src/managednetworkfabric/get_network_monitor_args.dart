// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_monitor_args_doc}
/// Arguments for getNetworkMonitor.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_monitor_args_doc}
class GetNetworkMonitorArgs {
  /// Name of the Network Monitor.
  final pulumi.Input<String> networkMonitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkMonitorArgs].
  /// [networkMonitorName] Name of the Network Monitor.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkMonitorArgs({
    required String networkMonitorName,
    required String resourceGroupName,
  }) :
      networkMonitorName = pulumi.Input.asInput<String>(networkMonitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMonitorName': networkMonitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkMonitorArgs(
      networkMonitorName: map['networkMonitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

