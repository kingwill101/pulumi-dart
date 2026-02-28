// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_views_get_views_args_doc}
/// Arguments for getViews.
/// {@endtemplate}
/// {@macro pulumi_billing_get_views_get_views_args_doc}
class GetViewsArgs {
  /// List of billing view types to retrieve. Valid values are `PRIMARY`, `BILLING_GROUP`, `CUSTOM`.
  final pulumi.Input<List<String>>? billingViewTypes;

  /// Creates a new [GetViewsArgs].
  /// [billingViewTypes] List of billing view types to retrieve. Valid values are `PRIMARY`, `BILLING_GROUP`, `CUSTOM`.
  GetViewsArgs({
    List<String>? billingViewTypes,
  }) : billingViewTypes =
            pulumi.Input.asOptionalInput<List<String>>(billingViewTypes);

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
      billingViewTypes: map['billingViewTypes'] == null
          ? null
          : (map['billingViewTypes'] as List).cast<String>(),
    );
  }
}
