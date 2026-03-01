// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflows_v1beta_workflow_workflows_v1beta_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_workflows_v1beta_workflow_workflows_v1beta_args_doc}
class WorkflowWorkflowsV1betaArgs {
  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  final pulumi.Input<String>? description;

  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores and dashes. Label keys must start with a letter. International characters are allowed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  final pulumi.Input<String>? serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  final pulumi.Input<String>? sourceContents;

  /// Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  final pulumi.Input<String> workflowId;

  /// Creates a new [WorkflowWorkflowsV1betaArgs].
  /// [description] Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  /// [labels] Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores and dashes. Label keys must start with a letter. International characters are allowed.
  /// [location] Optional.
  /// [name] The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}
  /// [project] Optional.
  /// [serviceAccount] The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  /// [sourceContents] Workflow code to be executed. The size limit is 128KB.
  /// [workflowId] Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  WorkflowWorkflowsV1betaArgs({
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? serviceAccount,
    String? sourceContents,
    required String workflowId,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
       sourceContents = pulumi.Input.asOptionalInput<String>(sourceContents),
       workflowId = pulumi.Input.asInput<String>(workflowId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'sourceContents': ?sourceContents,
      'workflowId': workflowId,
    };
  }

  factory WorkflowWorkflowsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowWorkflowsV1betaArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      sourceContents: map['sourceContents'] == null
          ? null
          : map['sourceContents'] as String,
      workflowId: map['workflowId'] as String,
    );
  }
}
