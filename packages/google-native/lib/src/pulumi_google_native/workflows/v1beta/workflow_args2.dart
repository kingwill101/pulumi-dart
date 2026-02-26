// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Workflow.
class WorkflowArgs2 {
  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  final Input<String>? description;

  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores and dashes. Label keys must start with a letter. International characters are allowed.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}
  final Input<String>? name;
  final Input<String>? project;

  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  final Input<String>? serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  final Input<String>? sourceContents;

  /// Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  final Input<String> workflowId;

  WorkflowArgs2({
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceAccount,
    this.sourceContents,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sourceContentsValue = sourceContents;
    if (sourceContentsValue != null) {
      map['sourceContents'] = sourceContentsValue;
    }
    map['workflowId'] = workflowId;
    return map;
  }

  factory WorkflowArgs2.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      sourceContents: Input.asOptionalInput<String>(map['sourceContents']),
      workflowId: Input.asInput<String>(map['workflowId']),
    );
  }
}
