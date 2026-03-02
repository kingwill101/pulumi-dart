// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReceiptFilter resources.
class ReceiptFilterState {
  /// The SES receipt filter ARN.
  final pulumi.Input<String>? arn;
  /// The IP address or address range to filter, in CIDR notation
  final pulumi.Input<String>? cidr;
  /// The name of the filter
  final pulumi.Input<String>? name;
  /// Block or Allow
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ReceiptFilterState].
  /// [arn] The SES receipt filter ARN.
  /// [cidr] The IP address or address range to filter, in CIDR notation
  /// [name] The name of the filter
  /// [policy] Block or Allow
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ReceiptFilterState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cidr: map['cidr'] == null ? null : ((map['cidr'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

