// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_label_entry_deploymentmanager_v2beta.dart';
import 'target_configuration_deploymentmanager_v2beta.dart';

/// The set of arguments for Deployment.
class DeploymentDeploymentmanagerV2betaArgs {
  /// Sets the policy to use for creating new resources.
  final pulumi.Input<String>? createPolicy;

  /// An optional user-provided description of the deployment.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? id;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<List<DeploymentLabelEntryDeploymentmanagerV2beta>>? labels;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// If set to true, creates a deployment and creates "shell" resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the `update()` method or you can use the `cancelPreview()` method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
  final pulumi.Input<bool>? preview;
  final pulumi.Input<String>? project;

  /// [Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.
  final pulumi.Input<TargetConfigurationDeploymentmanagerV2beta>? target;

  DeploymentDeploymentmanagerV2betaArgs({
    this.createPolicy,
    this.description,
    this.id,
    this.labels,
    this.name,
    this.preview,
    this.project,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createPolicyValue = createPolicy;
    if (createPolicyValue != null) {
      map['createPolicy'] = createPolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = pulumi.Input.mapOptionalInputValue<
              List<DeploymentLabelEntryDeploymentmanagerV2beta>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) => pulumi.Input.encodeList<
              DeploymentLabelEntryDeploymentmanagerV2beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = pulumi.Input.mapOptionalInputValue<
          TargetConfigurationDeploymentmanagerV2beta,
          Map<String, dynamic>>(targetValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentDeploymentmanagerV2betaArgs.fromMap(
      Map<String, dynamic> map) {
    return DeploymentDeploymentmanagerV2betaArgs(
      createPolicy: pulumi.Input.asOptionalInput<String>(map['createPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      labels: pulumi.Input.asOptionalInput<
          List<DeploymentLabelEntryDeploymentmanagerV2beta>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      preview: pulumi.Input.asOptionalInput<bool>(map['preview']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      target: pulumi.Input.asOptionalInput<
          TargetConfigurationDeploymentmanagerV2beta>(map['target']),
    );
  }
}
