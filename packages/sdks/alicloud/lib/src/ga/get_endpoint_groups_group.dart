// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_groups_group_endpoint_configuration.dart';
import 'get_endpoint_groups_group_port_override.dart';

class GetEndpointGroupsGroup {
  /// The description of the endpoint group.
  final pulumi.Input<String> description;
  /// The endpointConfigurations of the endpoint group.
  final pulumi.Input<List<GetEndpointGroupsGroupEndpointConfiguration>> endpointConfigurations;
  /// The endpoint_group_id of the Endpoint Group.
  final pulumi.Input<String> endpointGroupId;
  /// (Available since v1.213.1) The list of endpoint group IP addresses.
  final pulumi.Input<List<String>> endpointGroupIpLists;
  /// The ID of the region where the endpoint group is deployed.
  final pulumi.Input<String> endpointGroupRegion;
  /// The interval between two consecutive health checks. Unit: seconds.
  final pulumi.Input<int> healthCheckIntervalSeconds;
  /// The path specified as the destination of the targets for health checks.
  final pulumi.Input<String> healthCheckPath;
  /// The port that is used for health checks.
  final pulumi.Input<int> healthCheckPort;
  /// The protocol that is used to connect to the targets for health checks.
  final pulumi.Input<String> healthCheckProtocol;
  /// The ID of the Endpoint Group.
  final pulumi.Input<String> id;
  /// The ID of the listener that is associated with the endpoint group.
  final pulumi.Input<String> listenerId;
  /// The name of the endpoint group.
  final pulumi.Input<String> name;
  /// Mapping between listening port and forwarding port of boarding point.
  final pulumi.Input<List<GetEndpointGroupsGroupPortOverride>> portOverrides;
  /// The status of the endpoint group. Valid values: `active`, `configuring`, `creating`, `init`.
  final pulumi.Input<String> status;
  /// The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy.
  final pulumi.Input<int> thresholdCount;
  /// The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  final pulumi.Input<int> trafficPercentage;

  /// Creates a new [GetEndpointGroupsGroup].
  /// [description] The description of the endpoint group.
  /// [endpointConfigurations] The endpointConfigurations of the endpoint group.
  /// [endpointGroupId] The endpoint_group_id of the Endpoint Group.
  /// [endpointGroupIpLists] (Available since v1.213.1) The list of endpoint group IP addresses.
  /// [endpointGroupRegion] The ID of the region where the endpoint group is deployed.
  /// [healthCheckIntervalSeconds] The interval between two consecutive health checks. Unit: seconds.
  /// [healthCheckPath] The path specified as the destination of the targets for health checks.
  /// [healthCheckPort] The port that is used for health checks.
  /// [healthCheckProtocol] The protocol that is used to connect to the targets for health checks.
  /// [id] The ID of the Endpoint Group.
  /// [listenerId] The ID of the listener that is associated with the endpoint group.
  /// [name] The name of the endpoint group.
  /// [portOverrides] Mapping between listening port and forwarding port of boarding point.
  /// [status] The status of the endpoint group. Valid values: `active`, `configuring`, `creating`, `init`.
  /// [thresholdCount] The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy.
  /// [trafficPercentage] The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  GetEndpointGroupsGroup({
    required this.description,
    required this.endpointConfigurations,
    required this.endpointGroupId,
    required this.endpointGroupIpLists,
    required this.endpointGroupRegion,
    required this.healthCheckIntervalSeconds,
    required this.healthCheckPath,
    required this.healthCheckPort,
    required this.healthCheckProtocol,
    required this.id,
    required this.listenerId,
    required this.name,
    required this.portOverrides,
    required this.status,
    required this.thresholdCount,
    required this.trafficPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'endpointConfigurations': pulumi.Input.mapInputValue<List<GetEndpointGroupsGroupEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<GetEndpointGroupsGroupEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointGroupId': endpointGroupId,
      'endpointGroupIpLists': endpointGroupIpLists,
      'endpointGroupRegion': endpointGroupRegion,
      'healthCheckIntervalSeconds': healthCheckIntervalSeconds,
      'healthCheckPath': healthCheckPath,
      'healthCheckPort': healthCheckPort,
      'healthCheckProtocol': healthCheckProtocol,
      'id': id,
      'listenerId': listenerId,
      'name': name,
      'portOverrides': pulumi.Input.mapInputValue<List<GetEndpointGroupsGroupPortOverride>, List<Map<String, dynamic>>>(portOverrides, (value) => pulumi.Input.encodeList<GetEndpointGroupsGroupPortOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'thresholdCount': thresholdCount,
      'trafficPercentage': trafficPercentage,
    };
  }

  factory GetEndpointGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupsGroup(
      description: pulumi.Input.fromValue(map['description'] as String),
      endpointConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEndpointGroupsGroupEndpointConfiguration>(map['endpointConfigurations']!, (value) => GetEndpointGroupsGroupEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      endpointGroupIpLists: pulumi.Input.fromValue((map['endpointGroupIpLists'] as List).cast<String>()),
      endpointGroupRegion: pulumi.Input.fromValue(map['endpointGroupRegion'] as String),
      healthCheckIntervalSeconds: pulumi.Input.fromValue(map['healthCheckIntervalSeconds'] as int),
      healthCheckPath: pulumi.Input.fromValue(map['healthCheckPath'] as String),
      healthCheckPort: pulumi.Input.fromValue(map['healthCheckPort'] as int),
      healthCheckProtocol: pulumi.Input.fromValue(map['healthCheckProtocol'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      portOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEndpointGroupsGroupPortOverride>(map['portOverrides']!, (value) => GetEndpointGroupsGroupPortOverride.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      thresholdCount: pulumi.Input.fromValue(map['thresholdCount'] as int),
      trafficPercentage: pulumi.Input.fromValue(map['trafficPercentage'] as int),
    );
  }
}

