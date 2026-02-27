// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_group_endpoint_configuration/endpoint_group_endpoint_configuration.dart';
import '../endpoint_group_port_override/endpoint_group_port_override.dart';

/// The set of arguments for EndpointGroup.
class EndpointGroupArgs {
  /// The list of endpoint objects. Fields documented below.
  final pulumi.Input<List<EndpointGroupEndpointConfiguration>>?
      endpointConfigurations;

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
  final pulumi.Input<String> listenerArn;

  /// Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.
  final pulumi.Input<List<EndpointGroupPortOverride>>? portOverrides;

  /// The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.
  final pulumi.Input<int>? thresholdCount;

  /// The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100.
  final pulumi.Input<double>? trafficDialPercentage;

  EndpointGroupArgs({
    this.endpointConfigurations,
    this.endpointGroupRegion,
    this.healthCheckIntervalSeconds,
    this.healthCheckPath,
    this.healthCheckPort,
    this.healthCheckProtocol,
    required this.listenerArn,
    this.portOverrides,
    this.thresholdCount,
    this.trafficDialPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointConfigurationsValue = endpointConfigurations;
    if (endpointConfigurationsValue != null) {
      map['endpointConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<EndpointGroupEndpointConfiguration>,
              List<Map<String, dynamic>>>(
          endpointConfigurationsValue,
          (value) => pulumi.Input.encodeList<EndpointGroupEndpointConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final endpointGroupRegionValue = endpointGroupRegion;
    if (endpointGroupRegionValue != null) {
      map['endpointGroupRegion'] = endpointGroupRegionValue;
    }
    final healthCheckIntervalSecondsValue = healthCheckIntervalSeconds;
    if (healthCheckIntervalSecondsValue != null) {
      map['healthCheckIntervalSeconds'] = healthCheckIntervalSecondsValue;
    }
    final healthCheckPathValue = healthCheckPath;
    if (healthCheckPathValue != null) {
      map['healthCheckPath'] = healthCheckPathValue;
    }
    final healthCheckPortValue = healthCheckPort;
    if (healthCheckPortValue != null) {
      map['healthCheckPort'] = healthCheckPortValue;
    }
    final healthCheckProtocolValue = healthCheckProtocol;
    if (healthCheckProtocolValue != null) {
      map['healthCheckProtocol'] = healthCheckProtocolValue;
    }
    map['listenerArn'] = listenerArn;
    final portOverridesValue = portOverrides;
    if (portOverridesValue != null) {
      map['portOverrides'] = pulumi.Input.mapOptionalInputValue<
              List<EndpointGroupPortOverride>, List<Map<String, dynamic>>>(
          portOverridesValue,
          (value) => pulumi.Input.encodeList<EndpointGroupPortOverride,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final thresholdCountValue = thresholdCount;
    if (thresholdCountValue != null) {
      map['thresholdCount'] = thresholdCountValue;
    }
    final trafficDialPercentageValue = trafficDialPercentage;
    if (trafficDialPercentageValue != null) {
      map['trafficDialPercentage'] = trafficDialPercentageValue;
    }
    return map;
  }

  factory EndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return EndpointGroupArgs(
      endpointConfigurations: pulumi.Input.asOptionalInput<
              List<EndpointGroupEndpointConfiguration>>(
          map['endpointConfigurations']),
      endpointGroupRegion:
          pulumi.Input.asOptionalInput<String>(map['endpointGroupRegion']),
      healthCheckIntervalSeconds:
          pulumi.Input.asOptionalInput<int>(map['healthCheckIntervalSeconds']),
      healthCheckPath:
          pulumi.Input.asOptionalInput<String>(map['healthCheckPath']),
      healthCheckPort:
          pulumi.Input.asOptionalInput<int>(map['healthCheckPort']),
      healthCheckProtocol:
          pulumi.Input.asOptionalInput<String>(map['healthCheckProtocol']),
      listenerArn: pulumi.Input.asInput<String>(map['listenerArn']),
      portOverrides:
          pulumi.Input.asOptionalInput<List<EndpointGroupPortOverride>>(
              map['portOverrides']),
      thresholdCount: pulumi.Input.asOptionalInput<int>(map['thresholdCount']),
      trafficDialPercentage:
          pulumi.Input.asOptionalInput<double>(map['trafficDialPercentage']),
    );
  }
}
