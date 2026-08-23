// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_service_configuration_args_doc}
/// The set of arguments for ServiceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_service_configuration_args_doc}
class ServiceConfigurationArgs {
  /// The endpoint name.
  final pulumi.Input<String> endpointName;
  /// The port on which service is enabled.
  final pulumi.Input<double>? port;
  /// The resource Id of the connectivity endpoint (optional).
  final pulumi.Input<String>? resourceId;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The service name.
  final pulumi.Input<String>? serviceConfigurationName;
  /// Name of the service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ServiceConfigurationArgs].
  /// [endpointName] The endpoint name.
  /// [port] The port on which service is enabled.
  /// [resourceId] The resource Id of the connectivity endpoint (optional).
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceConfigurationName] The service name.
  /// [serviceName] Name of the service.
  const ServiceConfigurationArgs({
    required this.endpointName,
    this.port,
    this.resourceId,
    required this.resourceUri,
    this.serviceConfigurationName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'port': ?port,
      'resourceId': ?resourceId,
      'resourceUri': resourceUri,
      'serviceConfigurationName': ?serviceConfigurationName,
      'serviceName': serviceName,
    };
  }

  factory ServiceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConfigurationArgs(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      serviceConfigurationName: (() { final guardedValue = map['serviceConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
