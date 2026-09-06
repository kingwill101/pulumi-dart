// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_subscription_synchronization_response.dart';

/// Result data returned by listShareSubscriptionSynchronizations.
class ListShareSubscriptionSynchronizationsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<ShareSubscriptionSynchronizationResponse>? value;

  /// Creates a new [ListShareSubscriptionSynchronizationsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  const ListShareSubscriptionSynchronizationsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ShareSubscriptionSynchronizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListShareSubscriptionSynchronizationsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSynchronizationsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareSubscriptionSynchronizationResponse>(guardedValue, (value) => ShareSubscriptionSynchronizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
