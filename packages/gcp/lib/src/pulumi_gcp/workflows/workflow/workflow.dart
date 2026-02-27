import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';

/// Workflow program to be executed by Workflows.
///
///
/// To get more information about Workflow, see:
///
/// * [API documentation](https://cloud.google.com/workflows/docs/reference/rest/v1/projects.locations.workflows)
/// * How-to Guides
/// * [Managing Workflows](https://cloud.google.com/workflows/docs/creating-updating-workflow)
///
/// ## Example Usage
///
/// ### Workflow Basic
///
///
///
/// ### Workflow Tags
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class Workflow extends pulumi.CustomResource {
  /// Describes the level of platform logging to apply to calls and call responses during
  /// executions of this workflow. If both the workflow and the execution specify a logging level,
  /// the execution level takes precedence.
  /// Possible values are: `CALL_LOG_LEVEL_UNSPECIFIED`, `LOG_ALL_CALLS`, `LOG_ERRORS_ONLY`, `LOG_NONE`.
  late final pulumi.Output<String?> callLogLevel;

  /// The timestamp of when the workflow was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The KMS key used to encrypt workflow and execution data.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  late final pulumi.Output<String?> cryptoKeyName;
  late final pulumi.Output<bool?> deletionProtection;

  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  late final pulumi.Output<String> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Describes the level of execution history to be stored for this workflow. This configuration
  /// determines how much information about workflow executions is preserved. If not specified,
  /// defaults to EXECUTION_HISTORY_LEVEL_UNSPECIFIED.
  /// Possible values are: `EXECUTION_HISTORY_LEVEL_UNSPECIFIED`, `EXECUTION_HISTORY_BASIC`, `EXECUTION_HISTORY_DETAILED`.
  late final pulumi.Output<String?> executionHistoryLevel;

  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the Workflow.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the
  /// specified prefix. If this and name are unspecified, a random value is chosen for the name.
  late final pulumi.Output<String> namePrefix;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the workflow.
  late final pulumi.Output<String?> region;

  /// The revision of the workflow. A new one is generated if the service account or source contents is changed.
  late final pulumi.Output<String> revisionId;

  /// Name of the service account associated with the latest workflow version. This service
  /// account represents the identity of the workflow and determines what permissions the workflow has.
  /// Format: projects/{project}/serviceAccounts/{account} or {account}.
  /// Using - as a wildcard for the {project} or not providing one at all will infer the project from the account.
  /// The {account} value can be the email address or the unique_id of the service account.
  /// If not provided, workflow will use the project's default service account.
  /// Modifying this field for an existing workflow results in a new workflow revision.
  late final pulumi.Output<String> serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  late final pulumi.Output<String?> sourceContents;

  /// State of the workflow deployment.
  late final pulumi.Output<String> state;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in
  /// the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The timestamp of when the workflow was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  late final pulumi.Output<Map<String, String>?> userEnvVars;

  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workflows/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.callLogLevel = registerOutput<String?>('callLogLevel');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String?>('cryptoKeyName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.executionHistoryLevel =
        registerOutput<String?>('executionHistoryLevel');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.revisionId = registerOutput<String>('revisionId');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.sourceContents = registerOutput<String?>('sourceContents');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.updateTime = registerOutput<String>('updateTime');
    this.userEnvVars = registerOutput<Map<String, String>?>('userEnvVars');
  }
}
