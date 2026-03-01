// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_endpoint_configuration.dart';
import 'endpoint_group_port_overrides.dart';

/// Input properties used for looking up and filtering EndpointGroup resources.
class EndpointGroupState {
  /// The ID of the Global Accelerator instance to which the endpoint group will be added.
  final pulumi.Input<String>? acceleratorId;
  /// The description of the endpoint group.
  final pulumi.Input<String>? description;
  /// The endpointConfigurations of the endpoint group. See `endpoint_configurations` below.
  final pulumi.Input<List<EndpointGroupEndpointConfiguration>>? endpointConfigurations;
  /// (Available since v1.213.0) The active endpoint IP addresses of the endpoint group. `endpoint_group_ip_list` will change with the growth of network traffic. You can run `pulumi up` to query the latest CIDR blocks and IP addresses.
  final pulumi.Input<List<String>>? endpointGroupIpLists;
  /// The ID of the region where the endpoint group is deployed.
  final pulumi.Input<String>? endpointGroupRegion;
  /// The endpoint group type. Default value: `default`. Valid values: `default`, `virtual`.
  /// > **NOTE:** Currently, only `HTTP` or `HTTPS` protocol listener can directly create a `virtual` Endpoint Group. If it is `TCP` protocol listener, and you want to create a `virtual` Endpoint Group, please ensure that the `default` Endpoint Group has been created.
  final pulumi.Input<String>? endpointGroupType;
  /// The backend service protocol of the endpoint that is associated with the intelligent routing listener. Valid values: `HTTP1.1`, `HTTP2`.
  /// > **NOTE:** `endpoint_protocol_version` is valid only when `endpoint_request_protocol` is set to `HTTPS`.
  final pulumi.Input<String>? endpointProtocolVersion;
  /// The protocol that is used by the backend server. Valid values: `HTTP`, `HTTPS`.
  /// > **NOTE:** `endpoint_request_protocol` can be specified only if the listener that is associated with the endpoint group uses `HTTP` or `HTTPS`. For the listener of `HTTP` protocol, `endpoint_request_protocol` can only be set to `HTTP`.
  final pulumi.Input<String>? endpointRequestProtocol;
  /// Specifies whether to enable the health check feature. Valid values:
  final pulumi.Input<bool>? healthCheckEnabled;
  /// The interval between two consecutive health checks. Unit: seconds.
  final pulumi.Input<int>? healthCheckIntervalSeconds;
  /// The path specified as the destination of the targets for health checks.
  final pulumi.Input<String>? healthCheckPath;
  /// The port that is used for health checks.
  final pulumi.Input<int>? healthCheckPort;
  /// The protocol that is used to connect to the targets for health checks. Valid values:
  /// - `TCP` or `tcp`: TCP protocol.
  /// - `HTTP` or `http`: HTTP protocol.
  /// - `HTTPS` or `https`: HTTPS protocol.
  /// > **NOTE:** From version 1.223.0, `health_check_protocol` can be set to `TCP`, `HTTP`, `HTTPS`.
  final pulumi.Input<String>? healthCheckProtocol;
  /// The ID of the listener that is associated with the endpoint group.
  final pulumi.Input<String>? listenerId;
  /// The name of the endpoint group.
  final pulumi.Input<String>? name;
  /// Mapping between listening port and forwarding port of boarding point. See `port_overrides` below.
  /// > **NOTE:** Port mapping is only supported when creating terminal node group for listening instance of HTTP or HTTPS protocol. The listening port in the port map must be consistent with the listening port of the current listening instance.
  final pulumi.Input<EndpointGroupPortOverrides>? portOverrides;
  /// The status of the endpoint group.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy. Default value: `3`.
  final pulumi.Input<int>? thresholdCount;
  /// The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  final pulumi.Input<int>? trafficPercentage;

  /// Creates a new [EndpointGroupState].
  /// [acceleratorId] The ID of the Global Accelerator instance to which the endpoint group will be added.
  /// [description] The description of the endpoint group.
  /// [endpointConfigurations] The endpointConfigurations of the endpoint group. See `endpoint_configurations` below.
  /// [endpointGroupIpLists] (Available since v1.213.0) The active endpoint IP addresses of the endpoint group. `endpoint_group_ip_list` will change with the growth of network traffic. You can run `pulumi up` to query the latest CIDR blocks and IP addresses.
  /// [endpointGroupRegion] The ID of the region where the endpoint group is deployed.
  /// [endpointGroupType] The endpoint group type. Default value: `default`. Valid values: `default`, `virtual`.
  /// [endpointProtocolVersion] The backend service protocol of the endpoint that is associated with the intelligent routing listener. Valid values: `HTTP1.1`, `HTTP2`.
  /// [endpointRequestProtocol] The protocol that is used by the backend server. Valid values: `HTTP`, `HTTPS`.
  /// [healthCheckEnabled] Specifies whether to enable the health check feature. Valid values:
  /// [healthCheckIntervalSeconds] The interval between two consecutive health checks. Unit: seconds.
  /// [healthCheckPath] The path specified as the destination of the targets for health checks.
  /// [healthCheckPort] The port that is used for health checks.
  /// [healthCheckProtocol] The protocol that is used to connect to the targets for health checks. Valid values:
  /// [listenerId] The ID of the listener that is associated with the endpoint group.
  /// [name] The name of the endpoint group.
  /// [portOverrides] Mapping between listening port and forwarding port of boarding point. See `port_overrides` below.
  /// [status] The status of the endpoint group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [thresholdCount] The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy. Default value: `3`.
  /// [trafficPercentage] The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  EndpointGroupState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? description,
    pulumi.Output<List<EndpointGroupEndpointConfiguration>>? endpointConfigurations,
    pulumi.Output<List<String>>? endpointGroupIpLists,
    pulumi.Output<String>? endpointGroupRegion,
    pulumi.Output<String>? endpointGroupType,
    pulumi.Output<String>? endpointProtocolVersion,
    pulumi.Output<String>? endpointRequestProtocol,
    pulumi.Output<bool>? healthCheckEnabled,
    pulumi.Output<int>? healthCheckIntervalSeconds,
    pulumi.Output<String>? healthCheckPath,
    pulumi.Output<int>? healthCheckPort,
    pulumi.Output<String>? healthCheckProtocol,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? name,
    pulumi.Output<EndpointGroupPortOverrides>? portOverrides,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? thresholdCount,
    pulumi.Output<int>? trafficPercentage,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointConfigurations = pulumi.Input.asOptionalInput<List<EndpointGroupEndpointConfiguration>>(endpointConfigurations),
      endpointGroupIpLists = pulumi.Input.asOptionalInput<List<String>>(endpointGroupIpLists),
      endpointGroupRegion = pulumi.Input.asOptionalInput<String>(endpointGroupRegion),
      endpointGroupType = pulumi.Input.asOptionalInput<String>(endpointGroupType),
      endpointProtocolVersion = pulumi.Input.asOptionalInput<String>(endpointProtocolVersion),
      endpointRequestProtocol = pulumi.Input.asOptionalInput<String>(endpointRequestProtocol),
      healthCheckEnabled = pulumi.Input.asOptionalInput<bool>(healthCheckEnabled),
      healthCheckIntervalSeconds = pulumi.Input.asOptionalInput<int>(healthCheckIntervalSeconds),
      healthCheckPath = pulumi.Input.asOptionalInput<String>(healthCheckPath),
      healthCheckPort = pulumi.Input.asOptionalInput<int>(healthCheckPort),
      healthCheckProtocol = pulumi.Input.asOptionalInput<String>(healthCheckProtocol),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      portOverrides = pulumi.Input.asOptionalInput<EndpointGroupPortOverrides>(portOverrides),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      thresholdCount = pulumi.Input.asOptionalInput<int>(thresholdCount),
      trafficPercentage = pulumi.Input.asOptionalInput<int>(trafficPercentage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'description': ?description,
      'endpointConfigurations': ?pulumi.Input.mapOptionalInputValue<List<EndpointGroupEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<EndpointGroupEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointGroupIpLists': ?endpointGroupIpLists,
      'endpointGroupRegion': ?endpointGroupRegion,
      'endpointGroupType': ?endpointGroupType,
      'endpointProtocolVersion': ?endpointProtocolVersion,
      'endpointRequestProtocol': ?endpointRequestProtocol,
      'healthCheckEnabled': ?healthCheckEnabled,
      'healthCheckIntervalSeconds': ?healthCheckIntervalSeconds,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckPort': ?healthCheckPort,
      'healthCheckProtocol': ?healthCheckProtocol,
      'listenerId': ?listenerId,
      'name': ?name,
      'portOverrides': ?pulumi.Input.mapOptionalInputValue<EndpointGroupPortOverrides, Map<String, dynamic>>(portOverrides, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'thresholdCount': ?thresholdCount,
      'trafficPercentage': ?trafficPercentage,
    };
  }

  factory EndpointGroupState.fromMap(Map<String, dynamic> map) {
    return EndpointGroupState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointConfigurations: map['endpointConfigurations'] == null ? null : pulumi.Output.create<List<EndpointGroupEndpointConfiguration>>(pulumi.Input.decodeList<EndpointGroupEndpointConfiguration>(map['endpointConfigurations'], (value) => EndpointGroupEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      endpointGroupIpLists: map['endpointGroupIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['endpointGroupIpLists'] as List).cast<String>()),
      endpointGroupRegion: map['endpointGroupRegion'] == null ? null : pulumi.Output.create<String>(map['endpointGroupRegion'] as String),
      endpointGroupType: map['endpointGroupType'] == null ? null : pulumi.Output.create<String>(map['endpointGroupType'] as String),
      endpointProtocolVersion: map['endpointProtocolVersion'] == null ? null : pulumi.Output.create<String>(map['endpointProtocolVersion'] as String),
      endpointRequestProtocol: map['endpointRequestProtocol'] == null ? null : pulumi.Output.create<String>(map['endpointRequestProtocol'] as String),
      healthCheckEnabled: map['healthCheckEnabled'] == null ? null : pulumi.Output.create<bool>(map['healthCheckEnabled'] as bool),
      healthCheckIntervalSeconds: map['healthCheckIntervalSeconds'] == null ? null : pulumi.Output.create<int>(map['healthCheckIntervalSeconds'] as int),
      healthCheckPath: map['healthCheckPath'] == null ? null : pulumi.Output.create<String>(map['healthCheckPath'] as String),
      healthCheckPort: map['healthCheckPort'] == null ? null : pulumi.Output.create<int>(map['healthCheckPort'] as int),
      healthCheckProtocol: map['healthCheckProtocol'] == null ? null : pulumi.Output.create<String>(map['healthCheckProtocol'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portOverrides: map['portOverrides'] == null ? null : pulumi.Output.create<EndpointGroupPortOverrides>(EndpointGroupPortOverrides.fromMap((map['portOverrides'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      thresholdCount: map['thresholdCount'] == null ? null : pulumi.Output.create<int>(map['thresholdCount'] as int),
      trafficPercentage: map['trafficPercentage'] == null ? null : pulumi.Output.create<int>(map['trafficPercentage'] as int),
    );
  }
}

