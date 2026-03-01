// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recommendationsservice_get_service_endpoint_args_doc}
/// Arguments for getServiceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_recommendationsservice_get_service_endpoint_args_doc}
class GetServiceEndpointArgs {
  /// The name of the RecommendationsService Account resource.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ServiceEndpoint resource.
  final pulumi.Input<String> serviceEndpointName;

  /// Creates a new [GetServiceEndpointArgs].
  /// [accountName] The name of the RecommendationsService Account resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceEndpointName] The name of the ServiceEndpoint resource.
  GetServiceEndpointArgs({
    required String accountName,
    required String resourceGroupName,
    required String serviceEndpointName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceEndpointName = pulumi.Input.asInput<String>(serviceEndpointName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'serviceEndpointName': serviceEndpointName,
    };
  }

  factory GetServiceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointArgs(
      accountName: map['accountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceEndpointName: map['serviceEndpointName'] as String,
    );
  }
}

