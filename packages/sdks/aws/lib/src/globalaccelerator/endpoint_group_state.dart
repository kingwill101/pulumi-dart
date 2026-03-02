// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_endpoint_configuration.dart';
import 'endpoint_group_port_override.dart';

/// Input properties used for looking up and filtering EndpointGroup resources.
class EndpointGroupState {
  /// The Amazon Resource Name (ARN) of the endpoint group.
  final pulumi.Input<String>? arn;
  /// The list of endpoint objects. Fields documented below.
  final pulumi.Input<List<EndpointGroupEndpointConfiguration>>? endpointConfigurations;
  /// The name of the AWS Region where the endpoint group is located.
  final pulumi.Input<String>? endpointGroupRegion;
  /// The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.
  final pulumi.Input<int>? healthCheckIntervalSeconds;
  /// If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (`/`). the provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? healthCheckPath;
  /// The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.
  /// the provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<int>? healthCheckPort;
  /// The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.
  final pulumi.Input<String>? healthCheckProtocol;
  /// The Amazon Resource Name (ARN) of the listener.
  final pulumi.Input<String>? listenerArn;
  /// Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.
  final pulumi.Input<List<EndpointGroupPortOverride>>? portOverrides;
  /// The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.
  final pulumi.Input<int>? thresholdCount;
  /// The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100.
  final pulumi.Input<double>? trafficDialPercentage;

  /// Creates a new [EndpointGroupState].
  /// [arn] The Amazon Resource Name (ARN) of the endpoint group.
  /// [endpointConfigurations] The list of endpoint objects. Fields documented below.
  /// [endpointGroupRegion] The name of the AWS Region where the endpoint group is located.
  /// [healthCheckIntervalSeconds] The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.
  /// [healthCheckPath] If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (`/`). the provider will only perform drift detection of its value when present in a configuration.
  /// [healthCheckPort] The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.
  /// [healthCheckProtocol] The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.
  /// [listenerArn] The Amazon Resource Name (ARN) of the listener.
  /// [portOverrides] Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.
  /// [thresholdCount] The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.
  /// [trafficDialPercentage] The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100.
  EndpointGroupState({
    this.arn,
    this.endpointConfigurations,
    this.endpointGroupRegion,
    this.healthCheckIntervalSeconds,
    this.healthCheckPath,
    this.healthCheckPort,
    this.healthCheckProtocol,
    this.listenerArn,
    this.portOverrides,
    this.thresholdCount,
    this.trafficDialPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'endpointConfigurations': ?pulumi.Input.mapOptionalInputValue<List<EndpointGroupEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<EndpointGroupEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointGroupRegion': ?endpointGroupRegion,
      'healthCheckIntervalSeconds': ?healthCheckIntervalSeconds,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckPort': ?healthCheckPort,
      'healthCheckProtocol': ?healthCheckProtocol,
      'listenerArn': ?listenerArn,
      'portOverrides': ?pulumi.Input.mapOptionalInputValue<List<EndpointGroupPortOverride>, List<Map<String, dynamic>>>(portOverrides, (value) => pulumi.Input.encodeList<EndpointGroupPortOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thresholdCount': ?thresholdCount,
      'trafficDialPercentage': ?trafficDialPercentage,
    };
  }

  factory EndpointGroupState.fromMap(Map<String, dynamic> map) {
    return EndpointGroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      endpointConfigurations: map['endpointConfigurations'] == null ? null : (pulumi.Input.decodeList<EndpointGroupEndpointConfiguration>(map['endpointConfigurations'], (value) => EndpointGroupEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endpointGroupRegion: map['endpointGroupRegion'] == null ? null : (map['endpointGroupRegion'] as String).input(),
      healthCheckIntervalSeconds: map['healthCheckIntervalSeconds'] == null ? null : (map['healthCheckIntervalSeconds'] as int).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath'] as String).input(),
      healthCheckPort: map['healthCheckPort'] == null ? null : (map['healthCheckPort'] as int).input(),
      healthCheckProtocol: map['healthCheckProtocol'] == null ? null : (map['healthCheckProtocol'] as String).input(),
      listenerArn: map['listenerArn'] == null ? null : (map['listenerArn'] as String).input(),
      portOverrides: map['portOverrides'] == null ? null : (pulumi.Input.decodeList<EndpointGroupPortOverride>(map['portOverrides'], (value) => EndpointGroupPortOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      thresholdCount: map['thresholdCount'] == null ? null : (map['thresholdCount'] as int).input(),
      trafficDialPercentage: map['trafficDialPercentage'] == null ? null : (map['trafficDialPercentage'] as double).input(),
    );
  }
}

