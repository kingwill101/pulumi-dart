// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_response.dart';

/// Result data returned by listConfigurationStoreKeys.
class ListConfigurationStoreKeysResult {
  /// The URI that can be used to request the next set of paged results.
  final String? nextLink;
  /// The collection value.
  final List<ApiKeyResponse>? value;

  /// Creates a new [ListConfigurationStoreKeysResult].
  /// [nextLink] The URI that can be used to request the next set of paged results.
  /// [value] The collection value.
  ListConfigurationStoreKeysResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ApiKeyResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListConfigurationStoreKeysResult.fromMap(Map<String, dynamic> map) {
    return ListConfigurationStoreKeysResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ApiKeyResponse>(map['value']!, (value) => ApiKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

