// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAgentPool.
class GetAgentPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The count of agent machine
  final int? count;

  /// The resource ID.
  final String id;

  /// The location of the resource. This cannot be changed after the resource is created.
  final String location;

  /// The name of the resource.
  final String name;

  /// The OS of agent machine
  final String? os;

  /// The provisioning state of this agent pool
  final String provisioningState;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The Tier of agent machine
  final String? tier;

  /// The type of the resource.
  final String type;

  /// The Virtual Network Subnet Resource Id of the agent machine
  final String? virtualNetworkSubnetResourceId;

  /// Creates a new [GetAgentPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [count] The count of agent machine
  /// [id] The resource ID.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [name] The name of the resource.
  /// [os] The OS of agent machine
  /// [provisioningState] The provisioning state of this agent pool
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The tags of the resource.
  /// [tier] The Tier of agent machine
  /// [type] The type of the resource.
  /// [virtualNetworkSubnetResourceId] The Virtual Network Subnet Resource Id of the agent machine
  GetAgentPoolResult({
    required this.azureApiVersion,
    this.count,
    required this.id,
    required this.location,
    required this.name,
    this.os,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    this.tier,
    required this.type,
    this.virtualNetworkSubnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'count': ?count,
      'id': id,
      'location': location,
      'name': name,
      'os': ?os,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tier': ?tier,
      'type': type,
      'virtualNetworkSubnetResourceId': ?virtualNetworkSubnetResourceId,
    };
  }

  factory GetAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      os: (() {
        final guardedValue = map['os'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      virtualNetworkSubnetResourceId: (() {
        final guardedValue = map['virtualNetworkSubnetResourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
