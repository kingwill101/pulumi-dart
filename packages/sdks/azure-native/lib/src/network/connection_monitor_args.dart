// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_destination.dart';
import 'connection_monitor_endpoint.dart';
import 'connection_monitor_output.dart';
import 'connection_monitor_source.dart';
import 'connection_monitor_test_configuration.dart';
import 'connection_monitor_test_group.dart';

/// {@template pulumi_network_connection_monitor_args_doc}
/// The set of arguments for ConnectionMonitor.
/// {@endtemplate}
/// {@macro pulumi_network_connection_monitor_args_doc}
class ConnectionMonitorArgs {
  /// Determines if the connection monitor will start automatically once created.
  final pulumi.Input<bool>? autoStart;
  /// The name of the connection monitor.
  final pulumi.Input<String>? connectionMonitorName;
  /// Describes the destination of connection monitor.
  final pulumi.Input<ConnectionMonitorDestination>? destination;
  /// List of connection monitor endpoints.
  final pulumi.Input<List<ConnectionMonitorEndpoint>>? endpoints;
  /// Connection monitor location.
  final pulumi.Input<String>? location;
  /// Value indicating whether connection monitor V1 should be migrated to V2 format.
  final pulumi.Input<String>? migrate;
  /// Monitoring interval in seconds.
  final pulumi.Input<int>? monitoringIntervalInSeconds;
  /// The name of the Network Watcher resource.
  final pulumi.Input<String> networkWatcherName;
  /// Optional notes to be associated with the connection monitor.
  final pulumi.Input<String>? notes;
  /// List of connection monitor outputs.
  final pulumi.Input<List<ConnectionMonitorOutput>>? outputs;
  /// The name of the resource group containing Network Watcher.
  final pulumi.Input<String> resourceGroupName;
  /// Describes the source of connection monitor.
  final pulumi.Input<ConnectionMonitorSource>? source;
  /// Connection monitor tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of connection monitor test configurations.
  final pulumi.Input<List<ConnectionMonitorTestConfiguration>>? testConfigurations;
  /// List of connection monitor test groups.
  final pulumi.Input<List<ConnectionMonitorTestGroup>>? testGroups;

  /// Creates a new [ConnectionMonitorArgs].
  /// [autoStart] Determines if the connection monitor will start automatically once created.
  /// [connectionMonitorName] The name of the connection monitor.
  /// [destination] Describes the destination of connection monitor.
  /// [endpoints] List of connection monitor endpoints.
  /// [location] Connection monitor location.
  /// [migrate] Value indicating whether connection monitor V1 should be migrated to V2 format.
  /// [monitoringIntervalInSeconds] Monitoring interval in seconds.
  /// [networkWatcherName] The name of the Network Watcher resource.
  /// [notes] Optional notes to be associated with the connection monitor.
  /// [outputs] List of connection monitor outputs.
  /// [resourceGroupName] The name of the resource group containing Network Watcher.
  /// [source] Describes the source of connection monitor.
  /// [tags] Connection monitor tags.
  /// [testConfigurations] List of connection monitor test configurations.
  /// [testGroups] List of connection monitor test groups.
  ConnectionMonitorArgs({
    this.autoStart,
    this.connectionMonitorName,
    this.destination,
    this.endpoints,
    this.location,
    this.migrate,
    this.monitoringIntervalInSeconds,
    required this.networkWatcherName,
    this.notes,
    this.outputs,
    required this.resourceGroupName,
    this.source,
    this.tags,
    this.testConfigurations,
    this.testGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStart': ?autoStart,
      'connectionMonitorName': ?connectionMonitorName,
      'destination': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ConnectionMonitorEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'migrate': ?migrate,
      'monitoringIntervalInSeconds': ?monitoringIntervalInSeconds,
      'networkWatcherName': networkWatcherName,
      'notes': ?notes,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<ConnectionMonitorOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'source': ?pulumi.Input.mapOptionalInputValue<ConnectionMonitorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'testConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorTestConfiguration>, List<Map<String, dynamic>>>(testConfigurations, (value) => pulumi.Input.encodeList<ConnectionMonitorTestConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testGroups': ?pulumi.Input.mapOptionalInputValue<List<ConnectionMonitorTestGroup>, List<Map<String, dynamic>>>(testGroups, (value) => pulumi.Input.encodeList<ConnectionMonitorTestGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectionMonitorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorArgs(
      autoStart: map['autoStart'] == null ? null : (map['autoStart']! as bool).input(),
      connectionMonitorName: map['connectionMonitorName'] == null ? null : (map['connectionMonitorName']! as String).input(),
      destination: map['destination'] == null ? null : (ConnectionMonitorDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<ConnectionMonitorEndpoint>(map['endpoints']!, (value) => ConnectionMonitorEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      migrate: map['migrate'] == null ? null : (map['migrate']! as String).input(),
      monitoringIntervalInSeconds: map['monitoringIntervalInSeconds'] == null ? null : (map['monitoringIntervalInSeconds']! as int).input(),
      networkWatcherName: (map['networkWatcherName'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeList<ConnectionMonitorOutput>(map['outputs']!, (value) => ConnectionMonitorOutput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: map['source'] == null ? null : (ConnectionMonitorSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      testConfigurations: map['testConfigurations'] == null ? null : (pulumi.Input.decodeList<ConnectionMonitorTestConfiguration>(map['testConfigurations']!, (value) => ConnectionMonitorTestConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testGroups: map['testGroups'] == null ? null : (pulumi.Input.decodeList<ConnectionMonitorTestGroup>(map['testGroups']!, (value) => ConnectionMonitorTestGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

