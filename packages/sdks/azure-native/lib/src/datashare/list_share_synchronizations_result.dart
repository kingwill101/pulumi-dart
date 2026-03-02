// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_synchronization_response.dart';

/// Result data returned by listShareSynchronizations.
class ListShareSynchronizationsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<ShareSynchronizationResponse> value;

  /// Creates a new [ListShareSynchronizationsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  ListShareSynchronizationsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<ShareSynchronizationResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListShareSynchronizationsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSynchronizationsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<ShareSynchronizationResponse>(map['value'], (value) => ShareSynchronizationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

