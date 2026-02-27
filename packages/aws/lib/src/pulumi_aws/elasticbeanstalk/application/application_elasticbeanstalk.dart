import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_appversion_lifecycle/application_appversion_lifecycle.dart';
import 'application_elasticbeanstalk_args.dart';

/// Provides an Elastic Beanstalk Application Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// This resource creates an application that has one configuration template named
/// `default`, and no application versions
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Beanstalk Applications using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticbeanstalk/application:Application tf_test tf-test-name
/// ```
class ApplicationElasticbeanstalk extends pulumi.CustomResource {
  late final pulumi.Output<ApplicationAppversionLifecycle?> appversionLifecycle;

  /// The ARN assigned by AWS for this Elastic Beanstalk Application.
  late final pulumi.Output<String> arn;

  /// Short description of the application
  late final pulumi.Output<String?> description;

  /// The name of the application, must be unique within your account
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ApplicationElasticbeanstalk(
    String name, {
    ApplicationElasticbeanstalkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appversionLifecycle =
        registerOutput<ApplicationAppversionLifecycle?>('appversionLifecycle');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
