// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_desired_state_timeouts/instance_desired_state_timeouts.dart';

/// The set of arguments for InstanceDesiredState.
class InstanceDesiredStateArgs {
  /// DB Instance Identifier
  final Input<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configured state of the DB Instance. Valid values are `available` and `stopped`.
  final Input<String> state;
  final Input<InstanceDesiredStateTimeouts>? timeouts;

  InstanceDesiredStateArgs({
    required this.identifier,
    this.region,
    required this.state,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          InstanceDesiredStateTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceDesiredStateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredStateArgs(
      identifier: Input.asInput<String>(map['identifier']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asInput<String>(map['state']),
      timeouts:
          Input.asOptionalInput<InstanceDesiredStateTimeouts>(map['timeouts']),
    );
  }
}
