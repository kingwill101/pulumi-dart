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
  const ListConfigurationStoreKeysResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApiKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListConfigurationStoreKeysResult.fromMap(Map<String, dynamic> map) {
    return ListConfigurationStoreKeysResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiKeyResponse>(guardedValue, (value) => ApiKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

