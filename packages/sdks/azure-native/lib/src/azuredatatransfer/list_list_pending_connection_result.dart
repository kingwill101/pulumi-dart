// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pending_connection_response.dart';

/// Result data returned by listListPendingConnection.
class ListListPendingConnectionResult {
  /// Link to next results
  final String? nextLink;
  /// Connections array.
  final List<PendingConnectionResponse>? value;

  /// Creates a new [ListListPendingConnectionResult].
  /// [nextLink] Link to next results
  /// [value] Connections array.
  ListListPendingConnectionResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<PendingConnectionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListListPendingConnectionResult.fromMap(Map<String, dynamic> map) {
    return ListListPendingConnectionResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<PendingConnectionResponse>(map['value'], (value) => PendingConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

