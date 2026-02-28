// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_timeouts.dart';

/// {@template pulumi_rekognition_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_rekognition_project_project_args_doc}
class ProjectArgs {
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
  final pulumi.Input<ProjectTimeouts>? timeouts;

  /// Creates a new [ProjectArgs].
  /// [autoUpdate] Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when `feature` is `CONTENT_MODERATION`, but do not set otherwise.
  /// [feature] Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  /// [name] Desired name of the project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ProjectArgs({
    String? autoUpdate,
    String? feature,
    String? name,
    String? region,
    Map<String, String>? tags,
    ProjectTimeouts? timeouts,
  })  : autoUpdate = pulumi.Input.asOptionalInput<String>(autoUpdate),
        feature = pulumi.Input.asOptionalInput<String>(feature),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<ProjectTimeouts>(timeouts);

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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ProjectTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      autoUpdate:
          map['autoUpdate'] == null ? null : map['autoUpdate'] as String,
      feature: map['feature'] == null ? null : map['feature'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ProjectTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
