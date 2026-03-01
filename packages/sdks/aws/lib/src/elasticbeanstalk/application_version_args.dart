// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticbeanstalk_application_version_application_version_args_doc}
/// The set of arguments for ApplicationVersion.
/// {@endtemplate}
/// {@macro pulumi_elasticbeanstalk_application_version_application_version_args_doc}
class ApplicationVersionArgs {
  /// Name of the Beanstalk Application the version is associated with.
  final pulumi.Input<String> application;
  /// S3 bucket that contains the Application Version source bundle.
  final pulumi.Input<String> bucket;
  /// Short description of the Application Version.
  final pulumi.Input<String>? description;
  /// On delete, force an Application Version to be deleted when it may be in use by multiple Elastic Beanstalk Environments.
  final pulumi.Input<bool>? forceDelete;
  /// S3 object that is the Application Version source bundle.
  final pulumi.Input<String> key;
  /// Unique name for the this Application Version.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Pre-processes and validates the environment manifest (env.yaml ) and configuration files (*.config files in the .ebextensions folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment. You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional. It validates Elastic Beanstalk configuration files. It doesn’t validate your application’s configuration files, like proxy server or Docker configuration.
  final pulumi.Input<bool>? process;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags for the Elastic Beanstalk Application Version. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationVersionArgs].
  /// [application] Name of the Beanstalk Application the version is associated with.
  /// [bucket] S3 bucket that contains the Application Version source bundle.
  /// [description] Short description of the Application Version.
  /// [forceDelete] On delete, force an Application Version to be deleted when it may be in use by multiple Elastic Beanstalk Environments.
  /// [key] S3 object that is the Application Version source bundle.
  /// [name] Unique name for the this Application Version.
  /// [process] Pre-processes and validates the environment manifest (env.yaml ) and configuration files (*.config files in the .ebextensions folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment. You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional. It validates Elastic Beanstalk configuration files. It doesn’t validate your application’s configuration files, like proxy server or Docker configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags for the Elastic Beanstalk Application Version. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ApplicationVersionArgs({
    required pulumi.Output<String> application,
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? forceDelete,
    required pulumi.Output<String> key,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? process,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      application = pulumi.Input.asInput<String>(application),
      bucket = pulumi.Input.asInput<String>(bucket),
      description = pulumi.Input.asOptionalInput<String>(description),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      key = pulumi.Input.asInput<String>(key),
      name = pulumi.Input.asOptionalInput<String>(name),
      process = pulumi.Input.asOptionalInput<bool>(process),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'bucket': bucket,
      'description': ?description,
      'forceDelete': ?forceDelete,
      'key': key,
      'name': ?name,
      'process': ?process,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ApplicationVersionArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationVersionArgs(
      application: pulumi.Output.create<String>(map['application'] as String),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      key: pulumi.Output.create<String>(map['key'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      process: map['process'] == null ? null : pulumi.Output.create<bool>(map['process'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

