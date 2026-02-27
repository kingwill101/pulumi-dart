// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'deployment_label_entry2.dart';
import 'target_configuration2.dart';

/// The set of arguments for Deployment.
class DeploymentArgs3 {
  /// Sets the policy to use for creating new resources.
  final Input<String>? createPolicy;

  /// An optional user-provided description of the deployment.
  final Input<String>? description;
  final Input<String>? id;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final Input<List<DeploymentLabelEntry2>>? labels;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// If set to true, creates a deployment and creates "shell" resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the `update()` method or you can use the `cancelPreview()` method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
  final Input<bool>? preview;
  final Input<String>? project;

  /// [Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.
  final Input<TargetConfiguration2>? target;

  DeploymentArgs3({
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
      map['labels'] = Input.mapOptionalInputValue<List<DeploymentLabelEntry2>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) =>
              Input.encodeList<DeploymentLabelEntry2, Map<String, dynamic>>(
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
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = Input.mapOptionalInputValue<TargetConfiguration2,
          Map<String, dynamic>>(targetValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentArgs3.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs3(
      createPolicy: Input.asOptionalInput<String>(map['createPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      id: Input.asOptionalInput<String>(map['id']),
      labels: Input.asOptionalInput<List<DeploymentLabelEntry2>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      preview: Input.asOptionalInput<bool>(map['preview']),
      project: Input.asOptionalInput<String>(map['project']),
      target: Input.asOptionalInput<TargetConfiguration2>(map['target']),
    );
  }
}
