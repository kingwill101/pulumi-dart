// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_monitor/environment_monitor.dart';

/// The set of arguments for Environment.
class EnvironmentArgs {
  /// AppConfig application ID. Must be between 4 and 7 characters in length.
  final pulumi.Input<String> applicationId;

  /// Description of the environment. Can be at most 1024 characters.
  final pulumi.Input<String>? description;

  /// Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  final pulumi.Input<List<EnvironmentMonitor>>? monitors;

  /// Name for the environment. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['monitors'] = pulumi.Input.mapOptionalInputValue<
              List<EnvironmentMonitor>, List<Map<String, dynamic>>>(
          monitorsValue,
          (value) =>
              pulumi.Input.encodeList<EnvironmentMonitor, Map<String, dynamic>>(
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
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      monitors: pulumi.Input.asOptionalInput<List<EnvironmentMonitor>>(
          map['monitors']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
