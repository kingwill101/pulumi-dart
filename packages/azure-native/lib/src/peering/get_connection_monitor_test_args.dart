// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_connection_monitor_test_args_doc}
/// Arguments for getConnectionMonitorTest.
/// {@endtemplate}
/// {@macro pulumi_peering_get_connection_monitor_test_args_doc}
class GetConnectionMonitorTestArgs {
  /// The name of the connection monitor test
  final pulumi.Input<String> connectionMonitorTestName;
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectionMonitorTestArgs].
  /// [connectionMonitorTestName] The name of the connection monitor test
  /// [peeringServiceName] The name of the peering service.
  /// [resourceGroupName] The name of the resource group.
  GetConnectionMonitorTestArgs({
    required String connectionMonitorTestName,
    required String peeringServiceName,
    required String resourceGroupName,
  }) :
      connectionMonitorTestName = pulumi.Input.asInput<String>(connectionMonitorTestName),
      peeringServiceName = pulumi.Input.asInput<String>(peeringServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionMonitorTestName': connectionMonitorTestName,
      'peeringServiceName': peeringServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectionMonitorTestArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionMonitorTestArgs(
      connectionMonitorTestName: map['connectionMonitorTestName'] as String,
      peeringServiceName: map['peeringServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

