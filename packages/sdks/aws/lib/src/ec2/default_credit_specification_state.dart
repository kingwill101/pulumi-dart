// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_credit_specification_timeouts.dart';

/// Input properties used for looking up and filtering DefaultCreditSpecification resources.
class DefaultCreditSpecificationState {
  /// Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  final pulumi.Input<String>? cpuCredits;
  /// Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  final pulumi.Input<String>? instanceFamily;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<DefaultCreditSpecificationTimeouts>? timeouts;

  /// Creates a new [DefaultCreditSpecificationState].
  /// [cpuCredits] Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  /// [instanceFamily] Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  DefaultCreditSpecificationState({
    this.cpuCredits,
    this.instanceFamily,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCredits': ?cpuCredits,
      'instanceFamily': ?instanceFamily,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DefaultCreditSpecificationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DefaultCreditSpecificationState.fromMap(Map<String, dynamic> map) {
    return DefaultCreditSpecificationState(
      cpuCredits: map['cpuCredits'] == null ? null : (map['cpuCredits'] as String).input(),
      instanceFamily: map['instanceFamily'] == null ? null : (map['instanceFamily'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (DefaultCreditSpecificationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

