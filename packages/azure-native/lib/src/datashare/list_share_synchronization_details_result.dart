// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_details_response.dart';

/// Result data returned by listShareSynchronizationDetails.
class ListShareSynchronizationDetailsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<SynchronizationDetailsResponse> value;

  /// Creates a new [ListShareSynchronizationDetailsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  ListShareSynchronizationDetailsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<SynchronizationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListShareSynchronizationDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSynchronizationDetailsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: pulumi.Input.decodeList<SynchronizationDetailsResponse>(map['value'], (value) => SynchronizationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

