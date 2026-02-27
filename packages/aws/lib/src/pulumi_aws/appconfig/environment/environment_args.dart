// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_monitor/environment_monitor.dart';

/// The set of arguments for Environment.
class EnvironmentArgs {
  /// AppConfig application ID. Must be between 4 and 7 characters in length.
  final Input<String> applicationId;

  /// Description of the environment. Can be at most 1024 characters.
  final Input<String>? description;

  /// Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  final Input<List<EnvironmentMonitor>>? monitors;

  /// Name for the environment. Must be between 1 and 64 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  EnvironmentArgs({
    required this.applicationId,
    this.description,
    this.monitors,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final monitorsValue = monitors;
    if (monitorsValue != null) {
      map['monitors'] = Input.mapOptionalInputValue<List<EnvironmentMonitor>,
              List<Map<String, dynamic>>>(
          monitorsValue,
          (value) => Input.encodeList<EnvironmentMonitor, Map<String, dynamic>>(
              value, (value) => value.toMap()));
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

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      description: Input.asOptionalInput<String>(map['description']),
      monitors:
          Input.asOptionalInput<List<EnvironmentMonitor>>(map['monitors']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
