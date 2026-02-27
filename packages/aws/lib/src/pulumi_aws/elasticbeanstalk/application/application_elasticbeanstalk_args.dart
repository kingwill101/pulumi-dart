// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_appversion_lifecycle/application_appversion_lifecycle.dart';

/// The set of arguments for Application.
class ApplicationElasticbeanstalkArgs {
  final pulumi.Input<ApplicationAppversionLifecycle>? appversionLifecycle;

  /// Short description of the application
  final pulumi.Input<String>? description;

  /// The name of the application, must be unique within your account
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ApplicationElasticbeanstalkArgs({
    this.appversionLifecycle,
    this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appversionLifecycleValue = appversionLifecycle;
    if (appversionLifecycleValue != null) {
      map['appversionLifecycle'] = pulumi.Input.mapOptionalInputValue<
              ApplicationAppversionLifecycle, Map<String, dynamic>>(
          appversionLifecycleValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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

  factory ApplicationElasticbeanstalkArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationElasticbeanstalkArgs(
      appversionLifecycle:
          pulumi.Input.asOptionalInput<ApplicationAppversionLifecycle>(
              map['appversionLifecycle']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
