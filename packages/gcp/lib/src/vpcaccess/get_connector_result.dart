// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_subnet.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  final List<String> connectedProjects;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipCidrRange;
  final String machineType;
  final int maxInstances;
  final int maxThroughput;
  final int minInstances;
  final int minThroughput;
  final String name;
  final String network;
  final String? project;
  final String? region;
  final String selfLink;
  final String state;
  final List<GetConnectorSubnet> subnets;

  /// Creates a new [GetConnectorResult].
  /// [connectedProjects] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipCidrRange] Required.
  /// [machineType] Required.
  /// [maxInstances] Required.
  /// [maxThroughput] Required.
  /// [minInstances] Required.
  /// [minThroughput] Required.
  /// [name] Required.
  /// [network] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Required.
  /// [state] Required.
  /// [subnets] Required.
  GetConnectorResult({
    required this.connectedProjects,
    required this.id,
    required this.ipCidrRange,
    required this.machineType,
    required this.maxInstances,
    required this.maxThroughput,
    required this.minInstances,
    required this.minThroughput,
    required this.name,
    required this.network,
    this.project,
    this.region,
    required this.selfLink,
    required this.state,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedProjects': connectedProjects,
      'id': id,
      'ipCidrRange': ipCidrRange,
      'machineType': machineType,
      'maxInstances': maxInstances,
      'maxThroughput': maxThroughput,
      'minInstances': minInstances,
      'minThroughput': minThroughput,
      'name': name,
      'network': network,
      'project': ?project,
      'region': ?region,
      'selfLink': selfLink,
      'state': state,
      'subnets':
          pulumi.Input.encodeList<GetConnectorSubnet, Map<String, dynamic>>(
            subnets,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      connectedProjects: (map['connectedProjects'] as List).cast<String>(),
      id: map['id'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      machineType: map['machineType'] as String,
      maxInstances: map['maxInstances'] as int,
      maxThroughput: map['maxThroughput'] as int,
      minInstances: map['minInstances'] as int,
      minThroughput: map['minThroughput'] as int,
      name: map['name'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] as String,
      state: map['state'] as String,
      subnets: pulumi.Input.decodeList<GetConnectorSubnet>(
        map['subnets'],
        (value) =>
            GetConnectorSubnet.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
