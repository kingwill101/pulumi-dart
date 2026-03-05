// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_endpoint_configuration.dart';
import 'endpoint_group_port_overrides.dart';

/// {@template pulumi_ga_endpoint_group_endpoint_group_args_doc}
/// The set of arguments for EndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_ga_endpoint_group_endpoint_group_args_doc}
class EndpointGroupArgs {
  /// The ID of the Global Accelerator instance to which the endpoint group will be added.
  final pulumi.Input<String> acceleratorId;
  /// The description of the endpoint group.
  final pulumi.Input<String>? description;
  /// The endpointConfigurations of the endpoint group. See `endpoint_configurations` below.
  final pulumi.Input<List<EndpointGroupEndpointConfiguration>> endpointConfigurations;
  /// The ID of the region where the endpoint group is deployed.
  final pulumi.Input<String> endpointGroupRegion;
  /// The endpoint group type. Default value: `default`. Valid values: `default`, `virtual`.
  /// &gt; **NOTE:** Currently, only `HTTP` or `HTTPS` protocol listener can directly create a `virtual` Endpoint Group. If it is `TCP` protocol listener, and you want to create a `virtual` Endpoint Group, please ensure that the `default` Endpoint Group has been created.
  final pulumi.Input<String>? endpointGroupType;
  /// The backend service protocol of the endpoint that is associated with the intelligent routing listener. Valid values: `HTTP1.1`, `HTTP2`.
  /// &gt; **NOTE:** `endpoint_protocol_version` is valid only when `endpoint_request_protocol` is set to `HTTPS`.
  final pulumi.Input<String>? endpointProtocolVersion;
  /// The protocol that is used by the backend server. Valid values: `HTTP`, `HTTPS`.
  /// &gt; **NOTE:** `endpoint_request_protocol` can be specified only if the listener that is associated with the endpoint group uses `HTTP` or `HTTPS`. For the listener of `HTTP` protocol, `endpoint_request_protocol` can only be set to `HTTP`.
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
  /// &gt; **NOTE:** From version 1.223.0, `health_check_protocol` can be set to `TCP`, `HTTP`, `HTTPS`.
  final pulumi.Input<String>? healthCheckProtocol;
  /// The ID of the listener that is associated with the endpoint group.
  final pulumi.Input<String> listenerId;
  /// The name of the endpoint group.
  final pulumi.Input<String>? name;
  /// Mapping between listening port and forwarding port of boarding point. See `port_overrides` below.
  /// &gt; **NOTE:** Port mapping is only supported when creating terminal node group for listening instance of HTTP or HTTPS protocol. The listening port in the port map must be consistent with the listening port of the current listening instance.
  final pulumi.Input<EndpointGroupPortOverrides>? portOverrides;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy. Default value: `3`.
  final pulumi.Input<int>? thresholdCount;
  /// The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  final pulumi.Input<int>? trafficPercentage;

  /// Creates a new [EndpointGroupArgs].
  /// [acceleratorId] The ID of the Global Accelerator instance to which the endpoint group will be added.
  /// [description] The description of the endpoint group.
  /// [endpointConfigurations] The endpointConfigurations of the endpoint group. See `endpoint_configurations` below.
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
  /// [tags] A mapping of tags to assign to the resource.
  /// [thresholdCount] The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy. Default value: `3`.
  /// [trafficPercentage] The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  EndpointGroupArgs({
    required this.acceleratorId,
    this.description,
    required this.endpointConfigurations,
    required this.endpointGroupRegion,
    this.endpointGroupType,
    this.endpointProtocolVersion,
    this.endpointRequestProtocol,
    this.healthCheckEnabled,
    this.healthCheckIntervalSeconds,
    this.healthCheckPath,
    this.healthCheckPort,
    this.healthCheckProtocol,
    required this.listenerId,
    this.name,
    this.portOverrides,
    this.tags,
    this.thresholdCount,
    this.trafficPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'description': ?description,
      'endpointConfigurations': pulumi.Input.mapInputValue<List<EndpointGroupEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<EndpointGroupEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointGroupRegion': endpointGroupRegion,
      'endpointGroupType': ?endpointGroupType,
      'endpointProtocolVersion': ?endpointProtocolVersion,
      'endpointRequestProtocol': ?endpointRequestProtocol,
      'healthCheckEnabled': ?healthCheckEnabled,
      'healthCheckIntervalSeconds': ?healthCheckIntervalSeconds,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckPort': ?healthCheckPort,
      'healthCheckProtocol': ?healthCheckProtocol,
      'listenerId': listenerId,
      'name': ?name,
      'portOverrides': ?pulumi.Input.mapOptionalInputValue<EndpointGroupPortOverrides, Map<String, dynamic>>(portOverrides, (value) => value.toMap()),
      'tags': ?tags,
      'thresholdCount': ?thresholdCount,
      'trafficPercentage': ?trafficPercentage,
    };
  }

  factory EndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return EndpointGroupArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointGroupEndpointConfiguration>(map['endpointConfigurations']!, (value) => EndpointGroupEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      endpointGroupRegion: pulumi.Input.fromValue(map['endpointGroupRegion'] as String),
      endpointGroupType: (() { final guardedValue = map['endpointGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointProtocolVersion: (() { final guardedValue = map['endpointProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointRequestProtocol: (() { final guardedValue = map['endpointRequestProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckEnabled: (() { final guardedValue = map['healthCheckEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckIntervalSeconds: (() { final guardedValue = map['healthCheckIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckPort: (() { final guardedValue = map['healthCheckPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckProtocol: (() { final guardedValue = map['healthCheckProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portOverrides: (() { final guardedValue = map['portOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointGroupPortOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      thresholdCount: (() { final guardedValue = map['thresholdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trafficPercentage: (() { final guardedValue = map['trafficPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

