// ignore_for_file: unused_element, unnecessary_cast

import 'api_key_auth_credentials_response.dart';

/// DataConnector Properties.
class DataConnectorPropertiesResponse {
  /// AuthCredentials abstract base class for Auth Purpose.
  final ApiKeyAuthCredentialsResponse credentials;

  /// Creates a new [DataConnectorPropertiesResponse].
  /// [credentials] AuthCredentials abstract base class for Auth Purpose.
  DataConnectorPropertiesResponse({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials.toMap(),
    };
  }

  factory DataConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorPropertiesResponse(
      credentials: ApiKeyAuthCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
    );
  }
}

