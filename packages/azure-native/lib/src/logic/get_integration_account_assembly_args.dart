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
  GetIntegrationAccountAssemblyArgs({
    required String assemblyArtifactName,
    required String integrationAccountName,
    required String resourceGroupName,
  }) :
      assemblyArtifactName = pulumi.Input.asInput<String>(assemblyArtifactName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyArtifactName': assemblyArtifactName,
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountAssemblyArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountAssemblyArgs(
      assemblyArtifactName: map['assemblyArtifactName'] as String,
      integrationAccountName: map['integrationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

