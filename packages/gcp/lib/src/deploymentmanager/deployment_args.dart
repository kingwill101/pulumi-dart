// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_label.dart';
import 'deployment_target.dart';

/// {@template pulumi_deploymentmanager_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Set the policy to use for creating new resources. Only used on
  /// create and update. Valid values are `CREATE_OR_ACQUIRE` (default) or
  /// `ACQUIRE`. If set to `ACQUIRE` and resources do not already exist,
  /// the deployment will fail. Note that updating this field does not
  /// actually affect the deployment, just how it is updated.
  /// Default value is `CREATE_OR_ACQUIRE`.
  /// Possible values are: `ACQUIRE`, `CREATE_OR_ACQUIRE`.
  final pulumi.Input<String>? createPolicy;

  /// Set the policy to use for deleting new resources on update/delete.
  /// Valid values are `DELETE` (default) or `ABANDON`. If `DELETE`,
  /// resource is deleted after removal from Deployment Manager. If
  /// `ABANDON`, the resource is only removed from Deployment Manager
  /// and is not actually deleted. Note that updating this field does not
  /// actually change the deployment, just how it is updated.
  /// Default value is `DELETE`.
  /// Possible values are: `ABANDON`, `DELETE`.
  final pulumi.Input<String>? deletePolicy;

  /// Optional user-provided description of deployment.
  final pulumi.Input<String>? description;

  /// Key-value pairs to apply to this labels.
  /// Structure is documented below.
  final pulumi.Input<List<DeploymentLabel>>? labels;

  /// Unique name for the deployment
  final pulumi.Input<String>? name;

  /// If set to true, a deployment is created with "shell" resources
  /// that are not actually instantiated. This allows you to preview a
  /// deployment. It can be updated to false to actually deploy
  /// with real resources.
  /// ~>**NOTE:** Deployment Manager does not allow update
  /// of a deployment in preview (unless updating to preview=false). Thus,
  /// the provider will force-recreate deployments if either preview is updated
  /// to true or if other fields are updated while preview is true.
  final pulumi.Input<bool>? preview;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Parameters that define your deployment, including the deployment
  /// configuration and relevant templates.
  /// Structure is documented below.
  final pulumi.Input<DeploymentTarget> target;

  /// Creates a new [DeploymentArgs].
  /// [createPolicy] Set the policy to use for creating new resources. Only used on
  /// [deletePolicy] Set the policy to use for deleting new resources on update/delete.
  /// [description] Optional user-provided description of deployment.
  /// [labels] Key-value pairs to apply to this labels.
  /// [name] Unique name for the deployment
  /// [preview] If set to true, a deployment is created with "shell" resources
  /// [project] The ID of the project in which the resource belongs.
  /// [target] Parameters that define your deployment, including the deployment
  DeploymentArgs({
    String? createPolicy,
    String? deletePolicy,
    String? description,
    List<DeploymentLabel>? labels,
    String? name,
    bool? preview,
    String? project,
    required DeploymentTarget target,
  }) : createPolicy = pulumi.Input.asOptionalInput<String>(createPolicy),
       deletePolicy = pulumi.Input.asOptionalInput<String>(deletePolicy),
       description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<List<DeploymentLabel>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       preview = pulumi.Input.asOptionalInput<bool>(preview),
       project = pulumi.Input.asOptionalInput<String>(project),
       target = pulumi.Input.asInput<DeploymentTarget>(target);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createPolicy': ?createPolicy,
      'deletePolicy': ?deletePolicy,
      'description': ?description,
      'labels':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeploymentLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<DeploymentLabel, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': ?name,
      'preview': ?preview,
      'project': ?project,
      'target':
          pulumi.Input.mapInputValue<DeploymentTarget, Map<String, dynamic>>(
            target,
            (value) => value.toMap(),
          ),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      createPolicy: map['createPolicy'] == null
          ? null
          : map['createPolicy'] as String,
      deletePolicy: map['deletePolicy'] == null
          ? null
          : map['deletePolicy'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : pulumi.Input.decodeList<DeploymentLabel>(
              map['labels'],
              (value) => DeploymentLabel.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      preview: map['preview'] == null ? null : map['preview'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      target: DeploymentTarget.fromMap(
        (map['target'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
