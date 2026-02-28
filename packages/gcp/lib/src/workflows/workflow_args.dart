// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflows_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_workflows_workflow_workflow_args_doc}
class WorkflowArgs {
  /// Describes the level of platform logging to apply to calls and call responses during
  /// executions of this workflow. If both the workflow and the execution specify a logging level,
  /// the execution level takes precedence.
  /// Possible values are: `CALL_LOG_LEVEL_UNSPECIFIED`, `LOG_ALL_CALLS`, `LOG_ERRORS_ONLY`, `LOG_NONE`.
  final pulumi.Input<String>? callLogLevel;

  /// The KMS key used to encrypt workflow and execution data.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  final pulumi.Input<String>? cryptoKeyName;
  final pulumi.Input<bool>? deletionProtection;

  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  final pulumi.Input<String>? description;

  /// Describes the level of execution history to be stored for this workflow. This configuration
  /// determines how much information about workflow executions is preserved. If not specified,
  /// defaults to EXECUTION_HISTORY_LEVEL_UNSPECIFIED.
  /// Possible values are: `EXECUTION_HISTORY_LEVEL_UNSPECIFIED`, `EXECUTION_HISTORY_BASIC`, `EXECUTION_HISTORY_DETAILED`.
  final pulumi.Input<String>? executionHistoryLevel;

  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the Workflow.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the
  /// specified prefix. If this and name are unspecified, a random value is chosen for the name.
  final pulumi.Input<String>? namePrefix;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the workflow.
  final pulumi.Input<String>? region;

  /// Name of the service account associated with the latest workflow version. This service
  /// account represents the identity of the workflow and determines what permissions the workflow has.
  /// Format: projects/{project}/serviceAccounts/{account} or {account}.
  /// Using - as a wildcard for the {project} or not providing one at all will infer the project from the account.
  /// The {account} value can be the email address or the unique_id of the service account.
  /// If not provided, workflow will use the project's default service account.
  /// Modifying this field for an existing workflow results in a new workflow revision.
  final pulumi.Input<String>? serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  final pulumi.Input<String>? sourceContents;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in
  /// the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? tags;

  /// User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  final pulumi.Input<Map<String, String>>? userEnvVars;

  /// Creates a new [WorkflowArgs].
  /// [callLogLevel] Describes the level of platform logging to apply to calls and call responses during
  /// [cryptoKeyName] The KMS key used to encrypt workflow and execution data.
  /// [deletionProtection] Optional.
  /// [description] Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  /// [executionHistoryLevel] Describes the level of execution history to be stored for this workflow. This configuration
  /// [labels] A set of key/value label pairs to assign to this Workflow.
  /// [name] Name of the Workflow.
  /// [namePrefix] Creates a unique name beginning with the
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the workflow.
  /// [serviceAccount] Name of the service account associated with the latest workflow version. This service
  /// [sourceContents] Workflow code to be executed. The size limit is 128KB.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// [userEnvVars] User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  WorkflowArgs({
    String? callLogLevel,
    String? cryptoKeyName,
    bool? deletionProtection,
    String? description,
    String? executionHistoryLevel,
    Map<String, String>? labels,
    String? name,
    String? namePrefix,
    String? project,
    String? region,
    String? serviceAccount,
    String? sourceContents,
    Map<String, String>? tags,
    Map<String, String>? userEnvVars,
  })  : callLogLevel = pulumi.Input.asOptionalInput<String>(callLogLevel),
        cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        description = pulumi.Input.asOptionalInput<String>(description),
        executionHistoryLevel =
            pulumi.Input.asOptionalInput<String>(executionHistoryLevel),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        sourceContents = pulumi.Input.asOptionalInput<String>(sourceContents),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        userEnvVars =
            pulumi.Input.asOptionalInput<Map<String, String>>(userEnvVars);

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
      callLogLevel:
          map['callLogLevel'] == null ? null : map['callLogLevel'] as String,
      cryptoKeyName:
          map['cryptoKeyName'] == null ? null : map['cryptoKeyName'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      executionHistoryLevel: map['executionHistoryLevel'] == null
          ? null
          : map['executionHistoryLevel'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      sourceContents: map['sourceContents'] == null
          ? null
          : map['sourceContents'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userEnvVars: map['userEnvVars'] == null
          ? null
          : (map['userEnvVars'] as Map).cast<String, String>(),
    );
  }
}
