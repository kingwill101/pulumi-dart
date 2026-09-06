// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_synchronization_response.dart';

/// Result data returned by listShareSynchronizations.
class ListShareSynchronizationsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<ShareSynchronizationResponse>? value;

  /// Creates a new [ListShareSynchronizationsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  const ListShareSynchronizationsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ShareSynchronizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListShareSynchronizationsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSynchronizationsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareSynchronizationResponse>(guardedValue, (value) => ShareSynchronizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
