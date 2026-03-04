// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_service_environment_args_doc}
/// Arguments for getIntegrationServiceEnvironment.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_service_environment_args_doc}
class GetIntegrationServiceEnvironmentArgs {
  /// The integration service environment name.
  final pulumi.Input<String> integrationServiceEnvironmentName;

  /// The resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetIntegrationServiceEnvironmentArgs].
  /// [integrationServiceEnvironmentName] The integration service environment name.
  /// [resourceGroup] The resource group.
  GetIntegrationServiceEnvironmentArgs({
    required this.integrationServiceEnvironmentName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationServiceEnvironmentName': integrationServiceEnvironmentName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetIntegrationServiceEnvironmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIntegrationServiceEnvironmentArgs(
      integrationServiceEnvironmentName: pulumi.Input.fromValue(
        map['integrationServiceEnvironmentName'] as String,
      ),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}
