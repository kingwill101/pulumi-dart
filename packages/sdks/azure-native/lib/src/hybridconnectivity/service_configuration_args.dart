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
  ServiceConfigurationArgs({
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
      endpointName: (map['endpointName'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as double).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      serviceConfigurationName: map['serviceConfigurationName'] == null ? null : (map['serviceConfigurationName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

