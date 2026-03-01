// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_target.dart';
import 'scope_timeouts.dart';

/// Input properties used for looking up and filtering Scope resources.
class ScopeState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the scope.
  final pulumi.Input<String>? scopeArn;
  /// The identifier for the scope that includes the resources you want to get data results for.
  final pulumi.Input<String>? scopeId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ScopeTarget>>? targets;
  final pulumi.Input<ScopeTimeouts>? timeouts;

  /// Creates a new [ScopeState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeArn] The Amazon Resource Name (ARN) of the scope.
  /// [scopeId] The identifier for the scope that includes the resources you want to get data results for.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targets] The targets to define the scope to be monitored. A target is an array of target resources, which are currently Region-account pairs.
  /// [timeouts] Optional.
  ScopeState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? scopeArn,
    pulumi.Output<String>? scopeId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<ScopeTarget>>? targets,
    pulumi.Output<ScopeTimeouts>? timeouts,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      scopeArn = pulumi.Input.asOptionalInput<String>(scopeArn),
      scopeId = pulumi.Input.asOptionalInput<String>(scopeId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targets = pulumi.Input.asOptionalInput<List<ScopeTarget>>(targets),
      timeouts = pulumi.Input.asOptionalInput<ScopeTimeouts>(timeouts);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scopeArn: map['scopeArn'] == null ? null : pulumi.Output.create<String>(map['scopeArn'] as String),
      scopeId: map['scopeId'] == null ? null : pulumi.Output.create<String>(map['scopeId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<ScopeTarget>>(pulumi.Input.decodeList<ScopeTarget>(map['targets'], (value) => ScopeTarget.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ScopeTimeouts>(ScopeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

