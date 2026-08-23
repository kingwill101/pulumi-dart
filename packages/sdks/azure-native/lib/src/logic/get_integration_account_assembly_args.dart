// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_assembly_args_doc}
/// Arguments for getIntegrationAccountAssembly.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_assembly_args_doc}
class GetIntegrationAccountAssemblyArgs {
  /// The assembly artifact name.
  final pulumi.Input<String> assemblyArtifactName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountAssemblyArgs].
  /// [assemblyArtifactName] The assembly artifact name.
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  const GetIntegrationAccountAssemblyArgs({
    required this.assemblyArtifactName,
    required this.integrationAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyArtifactName': assemblyArtifactName,
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountAssemblyArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountAssemblyArgs(
      assemblyArtifactName: pulumi.Input.fromValue(map['assemblyArtifactName'] as String),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
