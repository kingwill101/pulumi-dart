// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pending_flow_response.dart';

/// Result data returned by listListPendingFlow.
class ListListPendingFlowResult {
  /// Link to next results
  final String? nextLink;
  /// flows array.
  final List<PendingFlowResponse>? value;

  /// Creates a new [ListListPendingFlowResult].
  /// [nextLink] Link to next results
  /// [value] flows array.
  const ListListPendingFlowResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<PendingFlowResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListListPendingFlowResult.fromMap(Map<String, dynamic> map) {
    return ListListPendingFlowResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PendingFlowResponse>(guardedValue, (value) => PendingFlowResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

