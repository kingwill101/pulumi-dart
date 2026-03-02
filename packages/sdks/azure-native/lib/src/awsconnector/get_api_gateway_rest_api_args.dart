// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_api_gateway_rest_api_args_doc}
/// Arguments for getApiGatewayRestApi.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_api_gateway_rest_api_args_doc}
class GetApiGatewayRestApiArgs {
  /// Name of ApiGatewayRestApi
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiGatewayRestApiArgs].
  /// [name] Name of ApiGatewayRestApi
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApiGatewayRestApiArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApiGatewayRestApiArgs.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayRestApiArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

