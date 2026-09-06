// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_details_response.dart';

/// Result data returned by listShareSubscriptionSynchronizationDetails.
class ListShareSubscriptionSynchronizationDetailsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<SynchronizationDetailsResponse>? value;

  /// Creates a new [ListShareSubscriptionSynchronizationDetailsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  const ListShareSubscriptionSynchronizationDetailsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SynchronizationDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListShareSubscriptionSynchronizationDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSynchronizationDetailsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SynchronizationDetailsResponse>(guardedValue, (value) => SynchronizationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
