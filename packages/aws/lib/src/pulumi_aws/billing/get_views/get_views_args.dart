// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getViews.
class GetViewsArgs {
  /// List of billing view types to retrieve. Valid values are `PRIMARY`, `BILLING_GROUP`, `CUSTOM`.
  final pulumi.Input<List<String>>? billingViewTypes;

  GetViewsArgs({
    this.billingViewTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingViewTypesValue = billingViewTypes;
    if (billingViewTypesValue != null) {
      map['billingViewTypes'] = billingViewTypesValue;
    }
    return map;
  }

  factory GetViewsArgs.fromMap(Map<String, dynamic> map) {
    return GetViewsArgs(
      billingViewTypes:
          pulumi.Input.asOptionalInput<List<String>>(map['billingViewTypes']),
    );
  }
}
