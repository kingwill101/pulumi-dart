// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_views_billing_view.dart';

/// Result data returned by getViews.
class GetViewsResult {
  final List<String>? billingViewTypes;
  /// List of billing view objects with the following attributes:
  final List<GetViewsBillingView>? billingViews;

  /// Creates a new [GetViewsResult].
  /// [billingViewTypes] Optional.
  /// [billingViews] List of billing view objects with the following attributes:
  const GetViewsResult({
    this.billingViewTypes,
    this.billingViews,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingViewTypes': ?billingViewTypes,
      'billingViews': ?(() { final guardedValue = billingViews; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetViewsBillingView, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetViewsResult.fromMap(Map<String, dynamic> map) {
    return GetViewsResult(
      billingViewTypes: (() { final guardedValue = map['billingViewTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      billingViews: (() { final guardedValue = map['billingViews']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetViewsBillingView>(guardedValue, (value) => GetViewsBillingView.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
