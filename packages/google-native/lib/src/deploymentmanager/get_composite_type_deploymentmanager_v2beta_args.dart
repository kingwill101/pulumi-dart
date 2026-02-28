// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_v2beta_get_composite_type_deploymentmanager_v2beta_args_doc}
/// Arguments for getCompositeType.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2beta_get_composite_type_deploymentmanager_v2beta_args_doc}
class GetCompositeTypeDeploymentmanagerV2betaArgs {
  final pulumi.Input<String> compositeType;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCompositeTypeDeploymentmanagerV2betaArgs].
  /// [compositeType] Required.
  /// [project] Optional.
  GetCompositeTypeDeploymentmanagerV2betaArgs({
    required String compositeType,
    String? project,
  }) :
      compositeType = pulumi.Input.asInput<String>(compositeType),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeType': compositeType,
      'project': ?project,
    };
  }

  factory GetCompositeTypeDeploymentmanagerV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeDeploymentmanagerV2betaArgs(
      compositeType: map['compositeType'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

