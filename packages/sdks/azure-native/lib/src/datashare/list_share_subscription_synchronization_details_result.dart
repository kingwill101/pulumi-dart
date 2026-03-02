// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_details_response.dart';

/// Result data returned by listShareSubscriptionSynchronizationDetails.
class ListShareSubscriptionSynchronizationDetailsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<SynchronizationDetailsResponse> value;

  /// Creates a new [ListShareSubscriptionSynchronizationDetailsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  ListShareSubscriptionSynchronizationDetailsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<SynchronizationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListShareSubscriptionSynchronizationDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSynchronizationDetailsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<SynchronizationDetailsResponse>(map['value'], (value) => SynchronizationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

