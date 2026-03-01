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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

