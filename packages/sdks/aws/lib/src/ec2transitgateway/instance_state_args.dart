// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_instance_state_instance_state_args_doc}
/// The set of arguments for InstanceState.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_instance_state_instance_state_args_doc}
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

  /// Creates a new [InstanceStateArgs].
  /// [force] Whether to request a forced stop when `state` is `stopped`. Otherwise (_i.e._, `state` is `running`), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to `false`.
  /// [instanceId] ID of the instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the instance. Valid values are `stopped`, `running`.
  InstanceStateArgs({
    this.force,
    required this.instanceId,
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'instanceId': instanceId,
      'region': ?region,
      'state': state,
    };
  }

  factory InstanceStateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceStateArgs(
      force: map['force'] == null ? null : ((map['force'] as bool).input()).input(),
      instanceId: (map['instanceId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      state: (map['state'] as String).input(),
    );
  }
}

