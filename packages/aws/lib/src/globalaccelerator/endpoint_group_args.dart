// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_endpoint_configuration.dart';
import 'endpoint_group_port_override.dart';

/// {@template pulumi_globalaccelerator_endpoint_group_endpoint_group_args_doc}
/// The set of arguments for EndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_endpoint_group_endpoint_group_args_doc}
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

  /// Creates a new [EndpointGroupArgs].
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
  EndpointGroupArgs({
    List<EndpointGroupEndpointConfiguration>? endpointConfigurations,
    String? endpointGroupRegion,
    int? healthCheckIntervalSeconds,
    String? healthCheckPath,
    int? healthCheckPort,
    String? healthCheckProtocol,
    required String listenerArn,
    List<EndpointGroupPortOverride>? portOverrides,
    int? thresholdCount,
    double? trafficDialPercentage,
  }) : endpointConfigurations =
           pulumi.Input.asOptionalInput<
             List<EndpointGroupEndpointConfiguration>
           >(endpointConfigurations),
       endpointGroupRegion = pulumi.Input.asOptionalInput<String>(
         endpointGroupRegion,
       ),
       healthCheckIntervalSeconds = pulumi.Input.asOptionalInput<int>(
         healthCheckIntervalSeconds,
       ),
       healthCheckPath = pulumi.Input.asOptionalInput<String>(healthCheckPath),
       healthCheckPort = pulumi.Input.asOptionalInput<int>(healthCheckPort),
       healthCheckProtocol = pulumi.Input.asOptionalInput<String>(
         healthCheckProtocol,
       ),
       listenerArn = pulumi.Input.asInput<String>(listenerArn),
       portOverrides =
           pulumi.Input.asOptionalInput<List<EndpointGroupPortOverride>>(
             portOverrides,
           ),
       thresholdCount = pulumi.Input.asOptionalInput<int>(thresholdCount),
       trafficDialPercentage = pulumi.Input.asOptionalInput<double>(
         trafficDialPercentage,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointGroupEndpointConfiguration>,
            List<Map<String, dynamic>>
          >(
            endpointConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointGroupEndpointConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'endpointGroupRegion': ?endpointGroupRegion,
      'healthCheckIntervalSeconds': ?healthCheckIntervalSeconds,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckPort': ?healthCheckPort,
      'healthCheckProtocol': ?healthCheckProtocol,
      'listenerArn': listenerArn,
      'portOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointGroupPortOverride>,
            List<Map<String, dynamic>>
          >(
            portOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointGroupPortOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'thresholdCount': ?thresholdCount,
      'trafficDialPercentage': ?trafficDialPercentage,
    };
  }

  factory EndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return EndpointGroupArgs(
      endpointConfigurations: map['endpointConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<EndpointGroupEndpointConfiguration>(
              map['endpointConfigurations'],
              (value) => EndpointGroupEndpointConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      endpointGroupRegion: map['endpointGroupRegion'] == null
          ? null
          : map['endpointGroupRegion'] as String,
      healthCheckIntervalSeconds: map['healthCheckIntervalSeconds'] == null
          ? null
          : map['healthCheckIntervalSeconds'] as int,
      healthCheckPath: map['healthCheckPath'] == null
          ? null
          : map['healthCheckPath'] as String,
      healthCheckPort: map['healthCheckPort'] == null
          ? null
          : map['healthCheckPort'] as int,
      healthCheckProtocol: map['healthCheckProtocol'] == null
          ? null
          : map['healthCheckProtocol'] as String,
      listenerArn: map['listenerArn'] as String,
      portOverrides: map['portOverrides'] == null
          ? null
          : pulumi.Input.decodeList<EndpointGroupPortOverride>(
              map['portOverrides'],
              (value) => EndpointGroupPortOverride.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      thresholdCount: map['thresholdCount'] == null
          ? null
          : map['thresholdCount'] as int,
      trafficDialPercentage: map['trafficDialPercentage'] == null
          ? null
          : map['trafficDialPercentage'] as double,
    );
  }
}
