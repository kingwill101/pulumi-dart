// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_subscription_synchronization_response.dart';

/// Result data returned by listShareSubscriptionSynchronizations.
class ListShareSubscriptionSynchronizationsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<ShareSubscriptionSynchronizationResponse> value;

  /// Creates a new [ListShareSubscriptionSynchronizationsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  const ListShareSubscriptionSynchronizationsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<ShareSubscriptionSynchronizationResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListShareSubscriptionSynchronizationsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSynchronizationsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<ShareSubscriptionSynchronizationResponse>(map['value']!, (value) => ShareSubscriptionSynchronizationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
