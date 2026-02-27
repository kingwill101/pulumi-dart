import 'package:pulumi/pulumi.dart' as pulumi;
import '../experience_configuration/experience_configuration.dart';
import '../experience_endpoint/experience_endpoint.dart';
import 'experience_args.dart';

/// Resource for managing an AWS Kendra Experience.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Kendra Experience using the unique identifiers of the experience and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/experience:Experience example 1045d08d-66ef-4882-b3ed-dfb7df183e90/b34dfdf7-1f2b-4704-9581-79e00296845f
/// ```
class Experience extends pulumi.CustomResource {
  /// ARN of the Experience.
  late final pulumi.Output<String> arn;

  /// Configuration information for your Amazon Kendra experience. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  ///
  /// > **NOTE:** By default of the AWS Kendra API, updates to an existing `aws.kendra.Experience` resource (e.g. updating the `name`) will also update the `configuration.content_source_configuration.direct_put_content` parameter to `false` if not already provided.
  late final pulumi.Output<ExperienceConfiguration> configuration;

  /// A description for your Amazon Kendra experience.
  late final pulumi.Output<String?> description;

  /// Shows the endpoint URLs for your Amazon Kendra experiences. The URLs are unique and fully hosted by AWS.
  late final pulumi.Output<List<ExperienceEndpoint>> endpoints;

  /// The unique identifier of the experience.
  late final pulumi.Output<String> experienceId;

  /// The identifier of the index for your Amazon Kendra experience.
  late final pulumi.Output<String> indexId;

  /// A name for your Amazon Kendra experience.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of a role with permission to access `Query API`, `QuerySuggestions API`, `SubmitFeedback API`, and `AWS SSO` that stores your user and group information. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;

  /// The current processing status of your Amazon Kendra experience.
  late final pulumi.Output<String> status;

  Experience(
    String name, {
    ExperienceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/experience:Experience',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<ExperienceConfiguration>('configuration');
    this.description = registerOutput<String?>('description');
    this.endpoints = registerOutput<List<ExperienceEndpoint>>('endpoints');
    this.experienceId = registerOutput<String>('experienceId');
    this.indexId = registerOutput<String>('indexId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.status = registerOutput<String>('status');
  }
}
