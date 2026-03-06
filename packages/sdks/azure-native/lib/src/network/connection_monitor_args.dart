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
  const ConnectionMonitorArgs({
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
      autoStart: (() { final guardedValue = map['autoStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionMonitorName: (() { final guardedValue = map['connectionMonitorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMonitorDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorEndpoint>(guardedValue, (value) => ConnectionMonitorEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrate: (() { final guardedValue = map['migrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringIntervalInSeconds: (() { final guardedValue = map['monitoringIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkWatcherName: pulumi.Input.fromValue(map['networkWatcherName'] as String),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorOutput>(guardedValue, (value) => ConnectionMonitorOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMonitorSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      testConfigurations: (() { final guardedValue = map['testConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorTestConfiguration>(guardedValue, (value) => ConnectionMonitorTestConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testGroups: (() { final guardedValue = map['testGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionMonitorTestGroup>(guardedValue, (value) => ConnectionMonitorTestGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

