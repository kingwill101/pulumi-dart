// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../default_credit_specification_timeouts/default_credit_specification_timeouts.dart';

/// The set of arguments for DefaultCreditSpecification.
class DefaultCreditSpecificationArgs {
  /// Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  final Input<String> cpuCredits;

  /// Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  final Input<String> instanceFamily;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<DefaultCreditSpecificationTimeouts>? timeouts;

  DefaultCreditSpecificationArgs({
    required this.cpuCredits,
    required this.instanceFamily,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCredits'] = cpuCredits;
    map['instanceFamily'] = instanceFamily;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          DefaultCreditSpecificationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DefaultCreditSpecificationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultCreditSpecificationArgs(
      cpuCredits: Input.asInput<String>(map['cpuCredits']),
      instanceFamily: Input.asInput<String>(map['instanceFamily']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<DefaultCreditSpecificationTimeouts>(
          map['timeouts']),
    );
  }
}
