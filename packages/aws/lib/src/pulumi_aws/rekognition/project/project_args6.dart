// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_timeouts/project_timeouts2.dart';

/// The set of arguments for Project.
class ProjectArgs6 {
  /// Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when `feature` is `CONTENT_MODERATION`, but do not set otherwise.
  final Input<String>? autoUpdate;

  /// Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  final Input<String>? feature;

  /// Desired name of the project.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ProjectTimeouts2>? timeouts;

  ProjectArgs6({
    this.autoUpdate,
    this.feature,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoUpdateValue = autoUpdate;
    if (autoUpdateValue != null) {
      map['autoUpdate'] = autoUpdateValue;
    }
    final featureValue = feature;
    if (featureValue != null) {
      map['feature'] = featureValue;
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
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<ProjectTimeouts2, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectArgs6.fromMap(Map<String, dynamic> map) {
    return ProjectArgs6(
      autoUpdate: Input.asOptionalInput<String>(map['autoUpdate']),
      feature: Input.asOptionalInput<String>(map['feature']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ProjectTimeouts2>(map['timeouts']),
    );
  }
}
