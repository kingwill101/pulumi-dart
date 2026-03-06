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
  const ReadinessCheckState({
    this.arn,
    this.readinessCheckName,
    this.resourceSetName,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readinessCheckName: (() { final guardedValue = map['readinessCheckName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSetName: (() { final guardedValue = map['resourceSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

