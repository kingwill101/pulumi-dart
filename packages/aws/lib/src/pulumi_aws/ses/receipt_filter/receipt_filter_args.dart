// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReceiptFilter.
class ReceiptFilterArgs {
  /// The IP address or address range to filter, in CIDR notation
  final pulumi.Input<String> cidr;

  /// The name of the filter
  final pulumi.Input<String>? name;

  /// Block or Allow
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ReceiptFilterArgs({
    required this.cidr,
    this.name,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ReceiptFilterArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptFilterArgs(
      cidr: pulumi.Input.asInput<String>(map['cidr']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
