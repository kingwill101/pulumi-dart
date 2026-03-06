// ignore_for_file: unused_element, unnecessary_cast

import 'user_api_key_response_properties_response.dart';

/// Result data returned by getOrganizationApiKey.
class GetOrganizationApiKeyResult {
  final UserApiKeyResponsePropertiesResponse properties;

  /// Creates a new [GetOrganizationApiKeyResult].
  /// [properties] Required.
  const GetOrganizationApiKeyResult({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties.toMap(),
    };
  }

  factory GetOrganizationApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationApiKeyResult(
      properties: UserApiKeyResponsePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
    );
  }
}

