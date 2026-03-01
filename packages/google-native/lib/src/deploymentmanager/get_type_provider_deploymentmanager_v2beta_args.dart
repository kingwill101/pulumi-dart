// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_v2beta_get_type_provider_deploymentmanager_v2beta_args_doc}
/// Arguments for getTypeProvider.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2beta_get_type_provider_deploymentmanager_v2beta_args_doc}
class GetTypeProviderDeploymentmanagerV2betaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> typeProvider;

  /// Creates a new [GetTypeProviderDeploymentmanagerV2betaArgs].
  /// [project] Optional.
  /// [typeProvider] Required.
  GetTypeProviderDeploymentmanagerV2betaArgs({
    String? project,
    required String typeProvider,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       typeProvider = pulumi.Input.asInput<String>(typeProvider);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'typeProvider': typeProvider};
  }

  factory GetTypeProviderDeploymentmanagerV2betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTypeProviderDeploymentmanagerV2betaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      typeProvider: map['typeProvider'] as String,
    );
  }
}
