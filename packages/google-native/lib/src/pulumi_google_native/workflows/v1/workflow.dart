import 'package:pulumi/pulumi.dart';
import 'state_error_response2.dart';
import 'workflow_args.dart';

/// Creates a new workflow. If a workflow with the specified name already exists in the specified project and location, the long running operation returns a ALREADY_EXISTS error.
class Workflow extends CustomResource {
  /// Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
  late final Output<String> callLogLevel;

  /// The timestamp for when the workflow was created. This is a workflow-wide field and is not tied to a specific revision.
  late final Output<String> createTime;

  /// Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated with the workflow. Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. If not provided, data associated with the workflow will not be CMEK-encrypted.
  late final Output<String> cryptoKeyName;

  /// Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. This is a workflow-wide field and is not tied to a specific revision.
  late final Output<String> description;

  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. This is a workflow-wide field and is not tied to a specific revision.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a workflow-wide field and is not tied to a specific revision.
  late final Output<String> name;
  late final Output<String> project;

  /// The timestamp for the latest revision of the workflow's creation.
  late final Output<String> revisionCreateTime;

  /// The revision of the workflow. A new revision of a workflow is created as a result of updating the following properties of a workflow: - Service account - Workflow code to be executed The format is "000001-a4d", where the first six characters define the zero-padded revision ordinal number. They are followed by a hyphen and three hexadecimal random characters.
  late final Output<String> revisionId;

  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  late final Output<String> serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  late final Output<String> sourceContents;

  /// State of the workflow deployment.
  late final Output<String> state;

  /// Error regarding the state of the workflow. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  late final Output<StateErrorResponse2> stateError;

  /// The timestamp for when the workflow was last updated. This is a workflow-wide field and is not tied to a specific revision.
  late final Output<String> updateTime;

  /// Optional. User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS".
  late final Output<Map<String, String>> userEnvVars;

  /// Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  late final Output<String> workflowId;

  Workflow(
    String name, {
    WorkflowArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workflows/v1:Workflow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.callLogLevel = registerOutput<String>('callLogLevel');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String>('cryptoKeyName');
    this.description = registerOutput<String>('description');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.sourceContents = registerOutput<String>('sourceContents');
    this.state = registerOutput<String>('state');
    this.stateError = registerOutput<StateErrorResponse2>('stateError');
    this.updateTime = registerOutput<String>('updateTime');
    this.userEnvVars = registerOutput<Map<String, String>>('userEnvVars');
    this.workflowId = registerOutput<String>('workflowId');
  }
}
