// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_call_log_level.dart';

/// The set of arguments for Workflow.
class WorkflowArgs {
  /// Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
  final pulumi.Input<WorkflowCallLogLevel>? callLogLevel;

  /// Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated with the workflow. Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. If not provided, data associated with the workflow will not be CMEK-encrypted.
  final pulumi.Input<String>? cryptoKeyName;

  /// Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. This is a workflow-wide field and is not tied to a specific revision.
  final pulumi.Input<String>? description;

  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. This is a workflow-wide field and is not tied to a specific revision.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a workflow-wide field and is not tied to a specific revision.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  final pulumi.Input<String>? serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  final pulumi.Input<String>? sourceContents;

  /// Optional. User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS".
  final pulumi.Input<Map<String, String>>? userEnvVars;

  /// Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  final pulumi.Input<String> workflowId;

  WorkflowArgs({
    this.callLogLevel,
    this.cryptoKeyName,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceAccount,
    this.sourceContents,
    this.userEnvVars,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final callLogLevelValue = callLogLevel;
    if (callLogLevelValue != null) {
      map['callLogLevel'] =
          pulumi.Input.mapOptionalInputValue<WorkflowCallLogLevel, String>(
              callLogLevelValue, (value) => value.value);
    }
    final cryptoKeyNameValue = cryptoKeyName;
    if (cryptoKeyNameValue != null) {
      map['cryptoKeyName'] = cryptoKeyNameValue;
    }
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
    final userEnvVarsValue = userEnvVars;
    if (userEnvVarsValue != null) {
      map['userEnvVars'] = userEnvVarsValue;
    }
    map['workflowId'] = workflowId;
    return map;
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      callLogLevel: pulumi.Input.asOptionalInput<WorkflowCallLogLevel>(
          map['callLogLevel']),
      cryptoKeyName: pulumi.Input.asOptionalInput<String>(map['cryptoKeyName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      sourceContents:
          pulumi.Input.asOptionalInput<String>(map['sourceContents']),
      userEnvVars:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userEnvVars']),
      workflowId: pulumi.Input.asInput<String>(map['workflowId']),
    );
  }
}
