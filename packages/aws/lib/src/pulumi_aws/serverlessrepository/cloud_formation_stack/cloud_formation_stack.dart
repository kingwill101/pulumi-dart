import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_stack_args.dart';

/// Deploys an Application CloudFormation Stack from the Serverless Application Repository.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Serverless Application Repository Stack using the CloudFormation Stack name (with or without the `serverlessrepo-` prefix) or the CloudFormation Stack ID. For example:
///
/// ```sh
/// $ pulumi import aws:serverlessrepository/cloudFormationStack:CloudFormationStack example serverlessrepo-postgres-rotator
/// ```
class CloudFormationStack extends pulumi.CustomResource {
  /// The ARN of the application from the Serverless Application Repository.
  late final pulumi.Output<String> applicationId;

  /// A list of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`
  late final pulumi.Output<List<String>> capabilities;

  /// The name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  late final pulumi.Output<String> name;

  /// A map of outputs from the stack.
  late final pulumi.Output<Map<String, String>> outputs;

  /// A map of Parameter structures that specify input parameters for the stack.
  late final pulumi.Output<Map<String, String>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The version of the application to deploy. If not supplied, deploys the latest version.
  late final pulumi.Output<String> semanticVersion;

  /// A list of tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  CloudFormationStack(
    String name, {
    CloudFormationStackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:serverlessrepository/cloudFormationStack:CloudFormationStack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.capabilities = registerOutput<List<String>>('capabilities');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<Map<String, String>>('outputs');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.region = registerOutput<String>('region');
    this.semanticVersion = registerOutput<String>('semanticVersion');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
