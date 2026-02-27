import 'package:pulumi/pulumi.dart';
import 'application_version_args.dart';

/// Provides an Elastic Beanstalk Application Version Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// This resource creates a Beanstalk Application Version that can be deployed to a Beanstalk
/// Environment.
///
/// > **NOTE on Application Version Resource:**  When using the Application Version resource with multiple
/// Elastic Beanstalk Environments it is possible that an error may be returned
/// when attempting to delete an Application Version while it is still in use by a different environment.
/// To work around this you can either create each environment in a separate AWS account or create your `aws.elasticbeanstalk.ApplicationVersion` resources with a unique names in your Elastic Beanstalk Application. For example &lt;revision&gt;-&lt;environment&gt;.
class ApplicationVersion extends CustomResource {
  /// Name of the Beanstalk Application the version is associated with.
  late final Output<String> application;

  /// ARN assigned by AWS for this Elastic Beanstalk Application.
  late final Output<String> arn;

  /// S3 bucket that contains the Application Version source bundle.
  late final Output<String> bucket;

  /// Short description of the Application Version.
  late final Output<String?> description;

  /// On delete, force an Application Version to be deleted when it may be in use by multiple Elastic Beanstalk Environments.
  late final Output<bool?> forceDelete;

  /// S3 object that is the Application Version source bundle.
  late final Output<String> key;

  /// Unique name for the this Application Version.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Pre-processes and validates the environment manifest (env.yaml ) and configuration files (*.config files in the .ebextensions folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment. You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional. It validates Elastic Beanstalk configuration files. It doesn’t validate your application’s configuration files, like proxy server or Docker configuration.
  late final Output<bool?> process;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of tags for the Elastic Beanstalk Application Version. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ApplicationVersion(
    String name, {
    ApplicationVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/applicationVersion:ApplicationVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.description = registerOutput<String?>('description');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.process = registerOutput<bool?>('process');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
