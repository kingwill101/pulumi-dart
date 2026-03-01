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
  GetIntegrationServiceEnvironmentManagedApiArgs({
    required pulumi.Output<String> apiName,
    required pulumi.Output<String> integrationServiceEnvironmentName,
    required pulumi.Output<String> resourceGroup,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      integrationServiceEnvironmentName = pulumi.Input.asInput<String>(integrationServiceEnvironmentName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'integrationServiceEnvironmentName': integrationServiceEnvironmentName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetIntegrationServiceEnvironmentManagedApiArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationServiceEnvironmentManagedApiArgs(
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      integrationServiceEnvironmentName: pulumi.Output.create<String>(map['integrationServiceEnvironmentName'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

