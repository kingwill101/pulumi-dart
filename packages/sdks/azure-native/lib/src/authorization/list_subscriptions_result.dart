// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_response.dart';

/// Result data returned by listSubscriptions.
class ListSubscriptionsResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// An array of subscriptions.
  final List<SubscriptionResponse>? value;

  /// Creates a new [ListSubscriptionsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] An array of subscriptions.
  const ListSubscriptionsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubscriptionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSubscriptionsResult.fromMap(Map<String, dynamic> map) {
    return ListSubscriptionsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubscriptionResponse>(guardedValue, (value) => SubscriptionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
