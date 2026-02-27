// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BillingAccountExclusion.
class BillingAccountExclusionArgs {
  /// The billing account to create the exclusion for.
  final pulumi.Input<String> billingAccount;

  /// A human-readable description.
  final pulumi.Input<String>? description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;

  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;

  BillingAccountExclusionArgs({
    required this.billingAccount,
    this.description,
    this.disabled,
    required this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccount'] = billingAccount;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory BillingAccountExclusionArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountExclusionArgs(
      billingAccount: pulumi.Input.asInput<String>(map['billingAccount']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
