// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_list_endpoint_managed_proxy_details_args_doc}
/// Arguments for listEndpointManagedProxyDetails.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_list_endpoint_managed_proxy_details_args_doc}
class ListEndpointManagedProxyDetailsArgs {
  /// The endpoint name.
  final pulumi.Input<String> endpointName;
  /// The target host name.
  final pulumi.Input<String>? hostname;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the service.
  final pulumi.Input<String> service;
  /// The name of the service. It is an optional property, if not provided, service configuration tokens issue code would be by passed.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ListEndpointManagedProxyDetailsArgs].
  /// [endpointName] The endpoint name.
  /// [hostname] The target host name.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [service] The name of the service.
  /// [serviceName] The name of the service. It is an optional property, if not provided, service configuration tokens issue code would be by passed.
  ListEndpointManagedProxyDetailsArgs({
    required this.endpointName,
    this.hostname,
    required this.resourceUri,
    required this.service,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'hostname': ?hostname,
      'resourceUri': resourceUri,
      'service': service,
      'serviceName': ?serviceName,
    };
  }

  factory ListEndpointManagedProxyDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListEndpointManagedProxyDetailsArgs(
      endpointName: (map['endpointName'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      service: (map['service'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName']! as String).input(),
    );
  }
}

