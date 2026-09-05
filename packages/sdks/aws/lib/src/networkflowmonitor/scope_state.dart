// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_target.dart';
import 'scope_timeouts.dart';

/// Input properties used for looking up and filtering Scope resources.
class ScopeState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the scope.
  final pulumi.Input<String?>? scopeArn;
  /// The identifier for the scope that includes the resources you want to get data results for.
  final pulumi.Input<String?>? scopeId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ScopeTarget>?>? targets;
  final pulumi.Input<ScopeTimeouts?>? timeouts;

  /// Creates a new [ScopeState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeArn] ARN of the scope.
  /// [scopeId] The identifier for the scope that includes the resources you want to get data results for.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targets] The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  /// [timeouts] Optional.
  const ScopeState({
    this.region,
    this.scopeArn,
    this.scopeId,
    this.tags,
    this.tagsAll,
    this.targets,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'scopeArn': ?scopeArn,
      'scopeId': ?scopeId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<ScopeTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<ScopeTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScopeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScopeState.fromMap(Map<String, dynamic> map) {
    return ScopeState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeArn: (() { final guardedValue = map['scopeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: (() { final guardedValue = map['scopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeTarget>(guardedValue, (value) => ScopeTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
