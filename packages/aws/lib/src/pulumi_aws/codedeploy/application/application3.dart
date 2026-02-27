import 'package:pulumi/pulumi.dart';
import 'application_args3.dart';

/// Provides a CodeDeploy application to be used as a basis for deployments
///
/// ## Example Usage
///
/// ### ECS Application
///
///
///
/// ### Lambda Application
///
///
///
/// ### Server Application
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy Applications using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codedeploy/application:Application example my-application
/// ```
class Application3 extends CustomResource {
  /// The application ID.
  late final Output<String> applicationId;

  /// The ARN of the CodeDeploy application.
  late final Output<String> arn;

  /// The compute platform can either be `ECS`, `Lambda`, or `Server`. Default is `Server`.
  late final Output<String?> computePlatform;

  /// The name for a connection to a GitHub account.
  late final Output<String> githubAccountName;

  /// Whether the user has authenticated with GitHub for the specified application.
  late final Output<bool> linkedToGithub;

  /// The name of the application.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Application3(
    String name, {
    ApplicationArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codedeploy/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.computePlatform = registerOutput<String?>('computePlatform');
    this.githubAccountName = registerOutput<String>('githubAccountName');
    this.linkedToGithub = registerOutput<bool>('linkedToGithub');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
