// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_timeouts.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// ARN of the Project.
  final pulumi.Input<String>? arn;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ProjectTimeouts>? timeouts;

  /// Creates a new [ProjectState].
  /// [arn] ARN of the Project.
  /// [autoUpdate] Specify if automatic retraining should occur. Valid values are `ENABLED` or `DISABLED`. Must be set when `feature` is `CONTENT_MODERATION`, but do not set otherwise.
  /// [feature] Specify the feature being customized. Valid values are `CONTENT_MODERATION` or `CUSTOM_LABELS`. Defaults to `CUSTOM_LABELS`.
  /// [name] Desired name of the project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ProjectState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? autoUpdate,
    pulumi.Output<String>? feature,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ProjectTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoUpdate = pulumi.Input.asOptionalInput<String>(autoUpdate),
      feature = pulumi.Input.asOptionalInput<String>(feature),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ProjectTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoUpdate': ?autoUpdate,
      'feature': ?feature,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProjectTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoUpdate: map['autoUpdate'] == null ? null : pulumi.Output.create<String>(map['autoUpdate'] as String),
      feature: map['feature'] == null ? null : pulumi.Output.create<String>(map['feature'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProjectTimeouts>(ProjectTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

