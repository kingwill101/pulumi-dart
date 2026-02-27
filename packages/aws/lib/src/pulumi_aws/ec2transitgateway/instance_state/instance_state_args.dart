// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceState.
class InstanceStateArgs {
  /// Whether to request a forced stop when `state` is `stopped`. Otherwise (_i.e._, `state` is `running`), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to `false`.
  final pulumi.Input<bool>? force;

  /// ID of the instance.
  final pulumi.Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State of the instance. Valid values are `stopped`, `running`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> state;

  InstanceStateArgs({
    this.force,
    required this.instanceId,
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    return map;
  }

  factory InstanceStateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceStateArgs(
      force: pulumi.Input.asOptionalInput<bool>(map['force']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asInput<String>(map['state']),
    );
  }
}
