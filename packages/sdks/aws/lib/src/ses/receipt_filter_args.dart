// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_receipt_filter_receipt_filter_args_doc}
/// The set of arguments for ReceiptFilter.
/// {@endtemplate}
/// {@macro pulumi_ses_receipt_filter_receipt_filter_args_doc}
class ReceiptFilterArgs {
  /// The IP address or address range to filter, in CIDR notation
  final pulumi.Input<String> cidr;
  /// The name of the filter
  final pulumi.Input<String>? name;
  /// Block or Allow
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ReceiptFilterArgs].
  /// [cidr] The IP address or address range to filter, in CIDR notation
  /// [name] The name of the filter
  /// [policy] Block or Allow
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ReceiptFilterArgs({
    required pulumi.Output<String> cidr,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      cidr = pulumi.Input.asInput<String>(cidr),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'name': ?name,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ReceiptFilterArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptFilterArgs(
      cidr: pulumi.Output.create<String>(map['cidr'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

