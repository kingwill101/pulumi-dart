// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_list_endpoint_credentials_args_doc}
/// Arguments for listEndpointCredentials.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_list_endpoint_credentials_args_doc}
class ListEndpointCredentialsArgs {
  /// The endpoint name.
  final pulumi.Input<String> endpointName;
  /// The is how long the endpoint access token is valid (in seconds).
  final pulumi.Input<int>? expiresin;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the service. If not provided, the request will by pass the generation of service configuration token
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ListEndpointCredentialsArgs].
  /// [endpointName] The endpoint name.
  /// [expiresin] The is how long the endpoint access token is valid (in seconds).
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceName] The name of the service. If not provided, the request will by pass the generation of service configuration token
  ListEndpointCredentialsArgs({
    required String endpointName,
    int? expiresin,
    required String resourceUri,
    String? serviceName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      expiresin = pulumi.Input.asOptionalInput<int>(expiresin),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'expiresin': ?expiresin,
      'resourceUri': resourceUri,
      'serviceName': ?serviceName,
    };
  }

  factory ListEndpointCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListEndpointCredentialsArgs(
      endpointName: map['endpointName'] as String,
      expiresin: map['expiresin'] == null ? null : map['expiresin'] as int,
      resourceUri: map['resourceUri'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

