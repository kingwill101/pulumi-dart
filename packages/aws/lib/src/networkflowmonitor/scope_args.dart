// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_target.dart';
import 'scope_timeouts.dart';

/// {@template pulumi_networkflowmonitor_scope_scope_args_doc}
/// The set of arguments for Scope.
/// {@endtemplate}
/// {@macro pulumi_networkflowmonitor_scope_scope_args_doc}
class ScopeArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ScopeTarget>> targets;
  final pulumi.Input<ScopeTimeouts>? timeouts;

  /// Creates a new [ScopeArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targets] The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  /// [timeouts] Optional.
  ScopeArgs({
    String? region,
    Map<String, String>? tags,
    required List<ScopeTarget> targets,
    ScopeTimeouts? timeouts,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targets = pulumi.Input.asInput<List<ScopeTarget>>(targets),
        timeouts = pulumi.Input.asOptionalInput<ScopeTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targets'] = pulumi.Input.mapInputValue<List<ScopeTarget>,
            List<Map<String, dynamic>>>(
        targets,
        (value) => pulumi.Input.encodeList<ScopeTarget, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ScopeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScopeArgs.fromMap(Map<String, dynamic> map) {
    return ScopeArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targets: pulumi.Input.decodeList<ScopeTarget>(
          map['targets'],
          (value) =>
              ScopeTarget.fromMap((value as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null
          ? null
          : ScopeTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
