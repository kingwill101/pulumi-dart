// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_views_billing_view/get_views_billing_view.dart';

/// Result data returned by getViews.
class GetViewsResult {
  final List<String>? billingViewTypes;

  /// List of billing view objects with the following attributes:
  final List<GetViewsBillingView> billingViews;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  GetViewsResult({
    this.billingViewTypes,
    required this.billingViews,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingViewTypesValue = billingViewTypes;
    if (billingViewTypesValue != null) {
      map['billingViewTypes'] = billingViewTypesValue;
    }
    map['billingViews'] =
        Input.encodeList<GetViewsBillingView, Map<String, dynamic>>(
            billingViews, (value) => value.toMap());
    map['id'] = id;
    return map;
  }

  factory GetViewsResult.fromMap(Map<String, dynamic> map) {
    return GetViewsResult(
      billingViewTypes: map['billingViewTypes'] == null
          ? null
          : (map['billingViewTypes'] as List).cast<String>(),
      billingViews: Input.decodeList<GetViewsBillingView>(
          map['billingViews'],
          (value) => GetViewsBillingView.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}
