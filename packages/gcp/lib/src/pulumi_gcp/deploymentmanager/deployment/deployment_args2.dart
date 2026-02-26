// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_label/deployment_label.dart';
import '../deployment_target/deployment_target.dart';

/// The set of arguments for Deployment.
class DeploymentArgs2 {
  /// Set the policy to use for creating new resources. Only used on
  /// create and update. Valid values are `CREATE_OR_ACQUIRE` (default) or
  /// `ACQUIRE`. If set to `ACQUIRE` and resources do not already exist,
  /// the deployment will fail. Note that updating this field does not
  /// actually affect the deployment, just how it is updated.
  /// Default value is `CREATE_OR_ACQUIRE`.
  /// Possible values are: `ACQUIRE`, `CREATE_OR_ACQUIRE`.
  final Input<String>? createPolicy;

  /// Set the policy to use for deleting new resources on update/delete.
  /// Valid values are `DELETE` (default) or `ABANDON`. If `DELETE`,
  /// resource is deleted after removal from Deployment Manager. If
  /// `ABANDON`, the resource is only removed from Deployment Manager
  /// and is not actually deleted. Note that updating this field does not
  /// actually change the deployment, just how it is updated.
  /// Default value is `DELETE`.
  /// Possible values are: `ABANDON`, `DELETE`.
  final Input<String>? deletePolicy;

  /// Optional user-provided description of deployment.
  final Input<String>? description;

  /// Key-value pairs to apply to this labels.
  /// Structure is documented below.
  final Input<List<DeploymentLabel>>? labels;

  /// Unique name for the deployment
  final Input<String>? name;

  /// If set to true, a deployment is created with "shell" resources
  /// that are not actually instantiated. This allows you to preview a
  /// deployment. It can be updated to false to actually deploy
  /// with real resources.
  /// ~>**NOTE:** Deployment Manager does not allow update
  /// of a deployment in preview (unless updating to preview=false). Thus,
  /// the provider will force-recreate deployments if either preview is updated
  /// to true or if other fields are updated while preview is true.
  final Input<bool>? preview;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Parameters that define your deployment, including the deployment
  /// configuration and relevant templates.
  /// Structure is documented below.
  final Input<DeploymentTarget> target;

  DeploymentArgs2({
    this.createPolicy,
    this.deletePolicy,
    this.description,
    this.labels,
    this.name,
    this.preview,
    this.project,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createPolicyValue = createPolicy;
    if (createPolicyValue != null) {
      map['createPolicy'] = createPolicyValue;
    }
    final deletePolicyValue = deletePolicy;
    if (deletePolicyValue != null) {
      map['deletePolicy'] = deletePolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = Input.mapOptionalInputValue<List<DeploymentLabel>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) => Input.encodeList<DeploymentLabel, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final previewValue = preview;
    if (previewValue != null) {
      map['preview'] = previewValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['target'] = Input.mapInputValue<DeploymentTarget, Map<String, dynamic>>(
        target, (value) => value.toMap());
    return map;
  }

  factory DeploymentArgs2.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs2(
      createPolicy: Input.asOptionalInput<String>(map['createPolicy']),
      deletePolicy: Input.asOptionalInput<String>(map['deletePolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<List<DeploymentLabel>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      preview: Input.asOptionalInput<bool>(map['preview']),
      project: Input.asOptionalInput<String>(map['project']),
      target: Input.asInput<DeploymentTarget>(map['target']),
    );
  }
}
