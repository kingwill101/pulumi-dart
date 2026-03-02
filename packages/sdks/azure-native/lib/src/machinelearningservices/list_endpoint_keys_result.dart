// ignore_for_file: unused_element, unnecessary_cast

import 'account_api_keys_response.dart';

/// Result data returned by listEndpointKeys.
class ListEndpointKeysResult {
  /// Dictionary of Keys for the endpoint.
  final AccountApiKeysResponse? keys;

  /// Creates a new [ListEndpointKeysResult].
  /// [keys] Dictionary of Keys for the endpoint.
  ListEndpointKeysResult({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys == null ? null : keys!.toMap(),
    };
  }

  factory ListEndpointKeysResult.fromMap(Map<String, dynamic> map) {
    return ListEndpointKeysResult(
      keys: map['keys'] == null ? null : AccountApiKeysResponse.fromMap((map['keys']! as Map).cast<String, dynamic>()),
    );
  }
}

