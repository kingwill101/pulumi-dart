// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_list_endpoint_ingress_gateway_credentials_args_doc}
/// Arguments for listEndpointIngressGatewayCredentials.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_list_endpoint_ingress_gateway_credentials_args_doc}
class ListEndpointIngressGatewayCredentialsArgs {
  /// The endpoint name.
  final pulumi.Input<String> endpointName;
  /// The is how long the endpoint access token is valid (in seconds).
  final pulumi.Input<int>? expiresin;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the service. If not provided, the request will by pass the generation of service configuration token.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ListEndpointIngressGatewayCredentialsArgs].
  /// [endpointName] The endpoint name.
  /// [expiresin] The is how long the endpoint access token is valid (in seconds).
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceName] The name of the service. If not provided, the request will by pass the generation of service configuration token.
  ListEndpointIngressGatewayCredentialsArgs({
    required this.endpointName,
    this.expiresin,
    required this.resourceUri,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'expiresin': ?expiresin,
      'resourceUri': resourceUri,
      'serviceName': ?serviceName,
    };
  }

  factory ListEndpointIngressGatewayCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListEndpointIngressGatewayCredentialsArgs(
      endpointName: (map['endpointName'] as String).input(),
      expiresin: map['expiresin'] == null ? null : (map['expiresin'] as int).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
    );
  }
}

