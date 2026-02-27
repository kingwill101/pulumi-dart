// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ApplicationVersion.
class ApplicationVersionArgs {
  /// Name of the Beanstalk Application the version is associated with.
  final Input<String> application;

  /// S3 bucket that contains the Application Version source bundle.
  final Input<String> bucket;

  /// Short description of the Application Version.
  final Input<String>? description;

  /// On delete, force an Application Version to be deleted when it may be in use by multiple Elastic Beanstalk Environments.
  final Input<bool>? forceDelete;

  /// S3 object that is the Application Version source bundle.
  final Input<String> key;

  /// Unique name for the this Application Version.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Pre-processes and validates the environment manifest (env.yaml ) and configuration files (*.config files in the .ebextensions folder) in the source bundle. Validating configuration files can identify issues prior to deploying the application version to an environment. You must turn processing on for application versions that you create using AWS CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3, processing is optional. It validates Elastic Beanstalk configuration files. It doesn’t validate your application’s configuration files, like proxy server or Docker configuration.
  final Input<bool>? process;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of tags for the Elastic Beanstalk Application Version. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ApplicationVersionArgs({
    required this.application,
    required this.bucket,
    this.description,
    this.forceDelete,
    required this.key,
    this.name,
    this.process,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['application'] = application;
    map['bucket'] = bucket;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    map['key'] = key;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final processValue = process;
    if (processValue != null) {
      map['process'] = processValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ApplicationVersionArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationVersionArgs(
      application: Input.asInput<String>(map['application']),
      bucket: Input.asInput<String>(map['bucket']),
      description: Input.asOptionalInput<String>(map['description']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      key: Input.asInput<String>(map['key']),
      name: Input.asOptionalInput<String>(map['name']),
      process: Input.asOptionalInput<bool>(map['process']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
