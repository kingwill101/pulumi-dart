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
  ListListPendingFlowResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<PendingFlowResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListListPendingFlowResult.fromMap(Map<String, dynamic> map) {
    return ListListPendingFlowResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<PendingFlowResponse>(map['value'], (value) => PendingFlowResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

