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
    this.force,
    this.instanceId,
    this.region,
    this.state,
  });

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
      force: map['force'] == null ? null : ((map['force'] as bool).input()).input(),
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
    );
  }
}

