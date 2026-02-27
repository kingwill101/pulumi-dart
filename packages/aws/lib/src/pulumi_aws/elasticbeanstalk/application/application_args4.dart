// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_appversion_lifecycle/application_appversion_lifecycle.dart';

/// The set of arguments for Application.
class ApplicationArgs4 {
  final Input<ApplicationAppversionLifecycle>? appversionLifecycle;

  /// Short description of the application
  final Input<String>? description;

  /// The name of the application, must be unique within your account
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ApplicationArgs4({
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
      map['appversionLifecycle'] = Input.mapOptionalInputValue<
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

  factory ApplicationArgs4.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs4(
      appversionLifecycle:
          Input.asOptionalInput<ApplicationAppversionLifecycle>(
              map['appversionLifecycle']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
