// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReadinessCheck resources.
class ReadinessCheckState {
  /// ARN of the readiness_check
  final pulumi.Input<String>? arn;
  /// Unique name describing the readiness check.
  final pulumi.Input<String>? readinessCheckName;
  /// Name describing the resource set that will be monitored for readiness.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? resourceSetName;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ReadinessCheckState].
  /// [arn] ARN of the readiness_check
  /// [readinessCheckName] Unique name describing the readiness check.
  /// [resourceSetName] Name describing the resource set that will be monitored for readiness.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ReadinessCheckState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? readinessCheckName,
    pulumi.Output<String>? resourceSetName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      readinessCheckName = pulumi.Input.asOptionalInput<String>(readinessCheckName),
      resourceSetName = pulumi.Input.asOptionalInput<String>(resourceSetName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'readinessCheckName': ?readinessCheckName,
      'resourceSetName': ?resourceSetName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ReadinessCheckState.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      readinessCheckName: map['readinessCheckName'] == null ? null : pulumi.Output.create<String>(map['readinessCheckName'] as String),
      resourceSetName: map['resourceSetName'] == null ? null : pulumi.Output.create<String>(map['resourceSetName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

