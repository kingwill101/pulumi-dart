// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_views_get_views_args_doc}
/// Arguments for getViews.
/// {@endtemplate}
/// {@macro pulumi_billing_get_views_get_views_args_doc}
class GetViewsArgs {
  /// List of billing view types to retrieve. Valid values are `PRIMARY`, `BILLING_GROUP`, `CUSTOM`.
  final pulumi.Input<List<String>?>? billingViewTypes;

  /// Creates a new [GetViewsArgs].
  /// [billingViewTypes] List of billing view types to retrieve. Valid values are `PRIMARY`, `BILLING_GROUP`, `CUSTOM`.
  const GetViewsArgs({
    this.billingViewTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingViewTypes': ?billingViewTypes,
    };
  }

  factory GetViewsArgs.fromMap(Map<String, dynamic> map) {
    return GetViewsArgs(
      billingViewTypes: (() { final guardedValue = map['billingViewTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
