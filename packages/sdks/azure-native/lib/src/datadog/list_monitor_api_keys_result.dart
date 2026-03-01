// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_api_key_response.dart';

/// Result data returned by listMonitorApiKeys.
class ListMonitorApiKeysResult {
  /// Link to the next set of results, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<DatadogApiKeyResponse>? value;

  /// Creates a new [ListMonitorApiKeysResult].
  /// [nextLink] Link to the next set of results, if any.
  /// [value] Results of a list operation.
  ListMonitorApiKeysResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<DatadogApiKeyResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListMonitorApiKeysResult.fromMap(Map<String, dynamic> map) {
    return ListMonitorApiKeysResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<DatadogApiKeyResponse>(map['value'], (value) => DatadogApiKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

