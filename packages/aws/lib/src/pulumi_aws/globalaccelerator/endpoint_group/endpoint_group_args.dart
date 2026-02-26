// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_group_endpoint_configuration/endpoint_group_endpoint_configuration.dart';
import '../endpoint_group_port_override/endpoint_group_port_override.dart';

/// The set of arguments for EndpointGroup.
class EndpointGroupArgs {
  /// The list of endpoint objects. Fields documented below.
  final Input<List<EndpointGroupEndpointConfiguration>>? endpointConfigurations;

  /// The name of the AWS Region where the endpoint group is located.
  final Input<String>? endpointGroupRegion;

  /// The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.
  final Input<int>? healthCheckIntervalSeconds;

  /// If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (`/`). the provider will only perform drift detection of its value when present in a configuration.
  final Input<String>? healthCheckPath;

  /// The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.
  /// the provider will only perform drift detection of its value when present in a configuration.
  final Input<int>? healthCheckPort;

  /// The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.
  final Input<String>? healthCheckProtocol;

  /// The Amazon Resource Name (ARN) of the listener.
  final Input<String> listenerArn;

  /// Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.
  final Input<List<EndpointGroupPortOverride>>? portOverrides;

  /// The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.
  final Input<int>? thresholdCount;

  /// The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100.
  final Input<double>? trafficDialPercentage;

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
      map['endpointConfigurations'] = Input.mapOptionalInputValue<
              List<EndpointGroupEndpointConfiguration>,
              List<Map<String, dynamic>>>(
          endpointConfigurationsValue,
          (value) => Input.encodeList<EndpointGroupEndpointConfiguration,
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
      map['portOverrides'] = Input.mapOptionalInputValue<
              List<EndpointGroupPortOverride>, List<Map<String, dynamic>>>(
          portOverridesValue,
          (value) =>
              Input.encodeList<EndpointGroupPortOverride, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      endpointConfigurations:
          Input.asOptionalInput<List<EndpointGroupEndpointConfiguration>>(
              map['endpointConfigurations']),
      endpointGroupRegion:
          Input.asOptionalInput<String>(map['endpointGroupRegion']),
      healthCheckIntervalSeconds:
          Input.asOptionalInput<int>(map['healthCheckIntervalSeconds']),
      healthCheckPath: Input.asOptionalInput<String>(map['healthCheckPath']),
      healthCheckPort: Input.asOptionalInput<int>(map['healthCheckPort']),
      healthCheckProtocol:
          Input.asOptionalInput<String>(map['healthCheckProtocol']),
      listenerArn: Input.asInput<String>(map['listenerArn']),
      portOverrides: Input.asOptionalInput<List<EndpointGroupPortOverride>>(
          map['portOverrides']),
      thresholdCount: Input.asOptionalInput<int>(map['thresholdCount']),
      trafficDialPercentage:
          Input.asOptionalInput<double>(map['trafficDialPercentage']),
    );
  }
}
