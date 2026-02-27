import 'package:pulumi/pulumi.dart' hide Config;
import 'workflow_args2.dart';

/// Creates a new workflow. If a workflow with the specified name already exists in the specified project and location, the long running operation will return ALREADY_EXISTS error.
class Workflow2 extends CustomResource {
  /// The timestamp of when the workflow was created.
  late final Output<String> createTime;

  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  late final Output<String> description;

  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores and dashes. Label keys must start with a letter. International characters are allowed.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}
  late final Output<String> name;
  late final Output<String> project;

  /// The timestamp that the latest revision of the workflow was created.
  late final Output<String> revisionCreateTime;

  /// The revision of the workflow. A new revision of a workflow is created as a result of updating the following properties of a workflow: - Service account - Workflow code to be executed The format is "000001-a4d", where the first 6 characters define the zero-padded revision ordinal number. They are followed by a hyphen and 3 hexadecimal random characters.
  late final Output<String> revisionId;

  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  late final Output<String> serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  late final Output<String> sourceContents;

  /// State of the workflow deployment.
  late final Output<String> state;

  /// The last update timestamp of the workflow.
  late final Output<String> updateTime;

  /// Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  late final Output<String> workflowId;

  Workflow2(
    String name, {
    WorkflowArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workflows/v1beta:Workflow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
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
    this.updateTime = registerOutput<String>('updateTime');
    this.workflowId = registerOutput<String>('workflowId');
  }
}
