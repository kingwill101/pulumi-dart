// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_views_billing_view.dart';

/// Result data returned by getViews.
class GetViewsResult {
  final List<String>? billingViewTypes;
  /// List of billing view objects with the following attributes:
  final List<GetViewsBillingView> billingViews;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetViewsResult].
  /// [billingViewTypes] Optional.
  /// [billingViews] List of billing view objects with the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  GetViewsResult({
    this.billingViewTypes,
    required this.billingViews,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingViewTypes': ?billingViewTypes,
      'billingViews': pulumi.Input.encodeList<GetViewsBillingView, Map<String, dynamic>>(billingViews, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetViewsResult.fromMap(Map<String, dynamic> map) {
    return GetViewsResult(
      billingViewTypes: (() { final guardedValue = map['billingViewTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      billingViews: pulumi.Input.decodeList<GetViewsBillingView>(map['billingViews']!, (value) => GetViewsBillingView.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

