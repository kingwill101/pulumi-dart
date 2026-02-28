// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_credit_specification_timeouts.dart';

/// {@template pulumi_ec2_default_credit_specification_default_credit_specification_args_doc}
/// The set of arguments for DefaultCreditSpecification.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_credit_specification_default_credit_specification_args_doc}
class DefaultCreditSpecificationArgs {
  /// Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  final pulumi.Input<String> cpuCredits;

  /// Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  final pulumi.Input<String> instanceFamily;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<DefaultCreditSpecificationTimeouts>? timeouts;

  /// Creates a new [DefaultCreditSpecificationArgs].
  /// [cpuCredits] Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  /// [instanceFamily] Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  DefaultCreditSpecificationArgs({
    required String cpuCredits,
    required String instanceFamily,
    String? region,
    DefaultCreditSpecificationTimeouts? timeouts,
  })  : cpuCredits = pulumi.Input.asInput<String>(cpuCredits),
        instanceFamily = pulumi.Input.asInput<String>(instanceFamily),
        region = pulumi.Input.asOptionalInput<String>(region),
        timeouts =
            pulumi.Input.asOptionalInput<DefaultCreditSpecificationTimeouts>(
                timeouts);

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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DefaultCreditSpecificationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DefaultCreditSpecificationArgs.fromMap(Map<String, dynamic> map) {
    return DefaultCreditSpecificationArgs(
      cpuCredits: map['cpuCredits'] as String,
      instanceFamily: map['instanceFamily'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : DefaultCreditSpecificationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
