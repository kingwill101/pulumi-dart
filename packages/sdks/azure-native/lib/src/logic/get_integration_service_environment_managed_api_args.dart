// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_service_environment_managed_api_args_doc}
/// Arguments for getIntegrationServiceEnvironmentManagedApi.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_service_environment_managed_api_args_doc}
class GetIntegrationServiceEnvironmentManagedApiArgs {
  /// The api name.
  final pulumi.Input<String> apiName;
  /// The integration service environment name.
  final pulumi.Input<String> integrationServiceEnvironmentName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetIntegrationServiceEnvironmentManagedApiArgs].
  /// [apiName] The api name.
  /// [integrationServiceEnvironmentName] The integration service environment name.
  /// [resourceGroup] The resource group name.
  const GetIntegrationServiceEnvironmentManagedApiArgs({
    required this.apiName,
    required this.integrationServiceEnvironmentName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'integrationServiceEnvironmentName': integrationServiceEnvironmentName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetIntegrationServiceEnvironmentManagedApiArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationServiceEnvironmentManagedApiArgs(
      apiName: pulumi.Input.fromValue(map['apiName'] as String),
      integrationServiceEnvironmentName: pulumi.Input.fromValue(map['integrationServiceEnvironmentName'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}
