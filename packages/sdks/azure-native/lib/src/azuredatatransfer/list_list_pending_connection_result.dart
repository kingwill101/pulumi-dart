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
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<PendingConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListListPendingConnectionResult.fromMap(Map<String, dynamic> map) {
    return ListListPendingConnectionResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PendingConnectionResponse>(guardedValue, (value) => PendingConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

