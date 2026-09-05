// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReceiptFilter resources.
class ReceiptFilterState {
  /// SES receipt filter ARN.
  final pulumi.Input<String?>? arn;
  /// IP address or address range to filter, in CIDR notation
  final pulumi.Input<String?>? cidr;
  /// Name of the filter
  final pulumi.Input<String?>? name;
  /// Block or Allow
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ReceiptFilterState].
  /// [arn] SES receipt filter ARN.
  /// [cidr] IP address or address range to filter, in CIDR notation
  /// [name] Name of the filter
  /// [policy] Block or Allow
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ReceiptFilterState({
    this.arn,
    this.cidr,
    this.name,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cidr': ?cidr,
      'name': ?name,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory ReceiptFilterState.fromMap(Map<String, dynamic> map) {
    return ReceiptFilterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
