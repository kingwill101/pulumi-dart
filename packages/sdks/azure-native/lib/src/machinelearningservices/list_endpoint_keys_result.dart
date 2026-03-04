// ignore_for_file: unused_element, unnecessary_cast

import 'account_api_keys_response.dart';

/// Result data returned by listEndpointKeys.
class ListEndpointKeysResult {
  /// Dictionary of Keys for the endpoint.
  final AccountApiKeysResponse? keys;

  /// Creates a new [ListEndpointKeysResult].
  /// [keys] Dictionary of Keys for the endpoint.
  ListEndpointKeysResult({this.keys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keys': ?keys?.toMap()};
  }

  factory ListEndpointKeysResult.fromMap(Map<String, dynamic> map) {
    return ListEndpointKeysResult(
      keys: (() {
        final guardedValue = map['keys'];
        if (guardedValue == null) return null;
        return AccountApiKeysResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
