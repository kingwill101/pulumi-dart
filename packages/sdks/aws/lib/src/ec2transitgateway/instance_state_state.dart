// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceState resources.
class InstanceStateState {
  /// Whether to request a forced stop when `state` is `stopped`. Otherwise (_i.e._, `state` is `running`), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to `false`.
  final pulumi.Input<bool>? force;
  /// ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the instance. Valid values are `stopped`, `running`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? state;

  /// Creates a new [InstanceStateState].
  /// [force] Whether to request a forced stop when `state` is `stopped`. Otherwise (_i.e._, `state` is `running`), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to `false`.
  /// [instanceId] ID of the instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the instance. Valid values are `stopped`, `running`.
  InstanceStateState({
    pulumi.Output<bool>? force,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
  }) :
      force = pulumi.Input.asOptionalInput<bool>(force),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'instanceId': ?instanceId,
      'region': ?region,
      'state': ?state,
    };
  }

  factory InstanceStateState.fromMap(Map<String, dynamic> map) {
    return InstanceStateState(
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

