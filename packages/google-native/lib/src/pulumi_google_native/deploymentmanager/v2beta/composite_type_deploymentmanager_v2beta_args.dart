// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_type_label_entry_deploymentmanager_v2beta.dart';
import 'template_contents_deploymentmanager_v2beta.dart';

/// The set of arguments for CompositeType.
class CompositeTypeDeploymentmanagerV2betaArgs {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? id;

  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<List<CompositeTypeLabelEntryDeploymentmanagerV2beta>>?
      labels;

  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Files for the template type.
  final pulumi.Input<TemplateContentsDeploymentmanagerV2beta>? templateContents;

  CompositeTypeDeploymentmanagerV2betaArgs({
    this.description,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.templateContents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
              List<CompositeTypeLabelEntryDeploymentmanagerV2beta>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) => pulumi.Input.encodeList<
              CompositeTypeLabelEntryDeploymentmanagerV2beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final templateContentsValue = templateContents;
    if (templateContentsValue != null) {
      map['templateContents'] = pulumi.Input.mapOptionalInputValue<
              TemplateContentsDeploymentmanagerV2beta, Map<String, dynamic>>(
          templateContentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CompositeTypeDeploymentmanagerV2betaArgs.fromMap(
      Map<String, dynamic> map) {
    return CompositeTypeDeploymentmanagerV2betaArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      labels: pulumi.Input.asOptionalInput<
          List<CompositeTypeLabelEntryDeploymentmanagerV2beta>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      templateContents:
          pulumi.Input.asOptionalInput<TemplateContentsDeploymentmanagerV2beta>(
              map['templateContents']),
    );
  }
}
