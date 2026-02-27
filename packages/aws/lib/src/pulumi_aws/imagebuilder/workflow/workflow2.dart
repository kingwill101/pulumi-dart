import 'package:pulumi/pulumi.dart';
import 'workflow_args2.dart';

/// Resource for managing an AWS EC2 Image Builder Workflow.
///
/// > Image Builder manages the workflows for the distribution stage. Therefore, using the DISTRIBUTION workflow type results in an error.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder workflow.
///
///
/// Using `pulumi import`, import EC2 Image Builder Workflow using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/workflow:Workflow example arn:aws:imagebuilder:us-east-1:aws:workflow/test/example/1.0.1/1
/// ```
///
/// Certain resource arguments, such as `uri`, cannot be read via the API and imported into Terraform. Terraform will display a difference for these arguments the first run after import if declared in the Terraform configuration for an imported resource.
class Workflow2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the workflow.
  late final Output<String> arn;

  /// Change description of the workflow.
  late final Output<String?> changeDescription;

  /// Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  late final Output<String> data;

  /// Date the workflow was created.
  late final Output<String> dateCreated;

  /// Description of the workflow.
  late final Output<String?> description;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  late final Output<String?> kmsKeyId;

  /// Name of the workflow.
  late final Output<String> name;

  /// Owner of the workflow.
  late final Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  late final Output<String> type;

  /// S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  late final Output<String?> uri;

  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  late final Output<String> version;

  Workflow2(
    String name, {
    WorkflowArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/workflow:Workflow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.changeDescription = registerOutput<String?>('changeDescription');
    this.data = registerOutput<String>('data');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.uri = registerOutput<String?>('uri');
    this.version = registerOutput<String>('version');
  }
}
