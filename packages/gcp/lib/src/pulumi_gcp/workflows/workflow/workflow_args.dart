// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Workflow.
class WorkflowArgs {
  /// Describes the level of platform logging to apply to calls and call responses during
  /// executions of this workflow. If both the workflow and the execution specify a logging level,
  /// the execution level takes precedence.
  /// Possible values are: `CALL_LOG_LEVEL_UNSPECIFIED`, `LOG_ALL_CALLS`, `LOG_ERRORS_ONLY`, `LOG_NONE`.
  final Input<String>? callLogLevel;

  /// The KMS key used to encrypt workflow and execution data.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  final Input<String>? cryptoKeyName;
  final Input<bool>? deletionProtection;

  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  final Input<String>? description;

  /// Describes the level of execution history to be stored for this workflow. This configuration
  /// determines how much information about workflow executions is preserved. If not specified,
  /// defaults to EXECUTION_HISTORY_LEVEL_UNSPECIFIED.
  /// Possible values are: `EXECUTION_HISTORY_LEVEL_UNSPECIFIED`, `EXECUTION_HISTORY_BASIC`, `EXECUTION_HISTORY_DETAILED`.
  final Input<String>? executionHistoryLevel;

  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the Workflow.
  final Input<String>? name;

  /// Creates a unique name beginning with the
  /// specified prefix. If this and name are unspecified, a random value is chosen for the name.
  final Input<String>? namePrefix;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the workflow.
  final Input<String>? region;

  /// Name of the service account associated with the latest workflow version. This service
  /// account represents the identity of the workflow and determines what permissions the workflow has.
  /// Format: projects/{project}/serviceAccounts/{account} or {account}.
  /// Using - as a wildcard for the {project} or not providing one at all will infer the project from the account.
  /// The {account} value can be the email address or the unique_id of the service account.
  /// If not provided, workflow will use the project's default service account.
  /// Modifying this field for an existing workflow results in a new workflow revision.
  final Input<String>? serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  final Input<String>? sourceContents;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in
  /// the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Input<Map<String, String>>? tags;

  /// User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  final Input<Map<String, String>>? userEnvVars;

  WorkflowArgs({
    this.callLogLevel,
    this.cryptoKeyName,
    this.deletionProtection,
    this.description,
    this.executionHistoryLevel,
    this.labels,
    this.name,
    this.namePrefix,
    this.project,
    this.region,
    this.serviceAccount,
    this.sourceContents,
    this.tags,
    this.userEnvVars,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final callLogLevelValue = callLogLevel;
    if (callLogLevelValue != null) {
      map['callLogLevel'] = callLogLevelValue;
    }
    final cryptoKeyNameValue = cryptoKeyName;
    if (cryptoKeyNameValue != null) {
      map['cryptoKeyName'] = cryptoKeyNameValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionHistoryLevelValue = executionHistoryLevel;
    if (executionHistoryLevelValue != null) {
      map['executionHistoryLevel'] = executionHistoryLevelValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sourceContentsValue = sourceContents;
    if (sourceContentsValue != null) {
      map['sourceContents'] = sourceContentsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userEnvVarsValue = userEnvVars;
    if (userEnvVarsValue != null) {
      map['userEnvVars'] = userEnvVarsValue;
    }
    return map;
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      callLogLevel: Input.asOptionalInput<String>(map['callLogLevel']),
      cryptoKeyName: Input.asOptionalInput<String>(map['cryptoKeyName']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      executionHistoryLevel:
          Input.asOptionalInput<String>(map['executionHistoryLevel']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      sourceContents: Input.asOptionalInput<String>(map['sourceContents']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userEnvVars:
          Input.asOptionalInput<Map<String, String>>(map['userEnvVars']),
    );
  }
}
