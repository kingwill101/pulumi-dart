// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_integration_account_assembly_content_callback_url_args_doc}
/// Arguments for listIntegrationAccountAssemblyContentCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_assembly_content_callback_url_args_doc}
class ListIntegrationAccountAssemblyContentCallbackUrlArgs {
  /// The assembly artifact name.
  final pulumi.Input<String> assemblyArtifactName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountAssemblyContentCallbackUrlArgs].
  /// [assemblyArtifactName] The assembly artifact name.
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  ListIntegrationAccountAssemblyContentCallbackUrlArgs({
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

  factory ListIntegrationAccountAssemblyContentCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountAssemblyContentCallbackUrlArgs(
      assemblyArtifactName: (map['assemblyArtifactName'] as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

