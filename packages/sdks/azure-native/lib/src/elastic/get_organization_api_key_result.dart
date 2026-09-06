// ignore_for_file: unused_element, unnecessary_cast

import 'user_api_key_response_properties_response.dart';

/// Result data returned by getOrganizationApiKey.
class GetOrganizationApiKeyResult {
  final UserApiKeyResponsePropertiesResponse? properties;

  /// Creates a new [GetOrganizationApiKeyResult].
  /// [properties] Optional.
  const GetOrganizationApiKeyResult({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties?.toMap(),
    };
  }

  factory GetOrganizationApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationApiKeyResult(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return UserApiKeyResponsePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
