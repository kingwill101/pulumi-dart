// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyAdvancedConfig resources.
class PolicyAdvancedConfigState {
  /// Access control policy strict mode of on-state. Valid values:
  final pulumi.Input<String>? internetSwitch;

  /// Creates a new [PolicyAdvancedConfigState].
  /// [internetSwitch] Access control policy strict mode of on-state. Valid values:
  PolicyAdvancedConfigState({this.internetSwitch});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'internetSwitch': ?internetSwitch};
  }

  factory PolicyAdvancedConfigState.fromMap(Map<String, dynamic> map) {
    return PolicyAdvancedConfigState(
      internetSwitch: (() {
        final guardedValue = map['internetSwitch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
