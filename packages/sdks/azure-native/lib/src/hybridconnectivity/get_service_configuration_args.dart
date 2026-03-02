// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_get_service_configuration_args_doc}
/// Arguments for getServiceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_get_service_configuration_args_doc}
class GetServiceConfigurationArgs {
  /// The endpoint name.
  final pulumi.Input<String> endpointName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The service name.
  final pulumi.Input<String> serviceConfigurationName;

  /// Creates a new [GetServiceConfigurationArgs].
  /// [endpointName] The endpoint name.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceConfigurationName] The service name.
  GetServiceConfigurationArgs({
    required this.endpointName,
    required this.resourceUri,
    required this.serviceConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'resourceUri': resourceUri,
      'serviceConfigurationName': serviceConfigurationName,
    };
  }

  factory GetServiceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConfigurationArgs(
      endpointName: (map['endpointName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      serviceConfigurationName: (map['serviceConfigurationName'] as String).input(),
    );
  }
}

