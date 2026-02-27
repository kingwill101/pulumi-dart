// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_timeouts/project_timeouts_rekognition.dart';

/// The set of arguments for Project.
class ProjectRekognitionArgs {
  /// Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when `feature` is `CONTENT_MODERATION`, but do not set otherwise.
  final pulumi.Input<String>? autoUpdate;

  /// Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  final pulumi.Input<String>? feature;

  /// Desired name of the project.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ProjectTimeoutsRekognition>? timeouts;

  ProjectRekognitionArgs({
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ProjectTimeoutsRekognition,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectRekognitionArgs.fromMap(Map<String, dynamic> map) {
    return ProjectRekognitionArgs(
      autoUpdate: pulumi.Input.asOptionalInput<String>(map['autoUpdate']),
      feature: pulumi.Input.asOptionalInput<String>(map['feature']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ProjectTimeoutsRekognition>(
          map['timeouts']),
    );
  }
}
