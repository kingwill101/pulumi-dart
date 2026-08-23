// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_auth_credentials_response.dart';

/// DataConnector Properties.
class DataConnectorPropertiesResponse {
  /// AuthCredentials abstract base class for Auth Purpose.
  final pulumi.Input<ApiKeyAuthCredentialsResponse> credentials;

  /// Creates a new [DataConnectorPropertiesResponse].
  /// [credentials] AuthCredentials abstract base class for Auth Purpose.
  const DataConnectorPropertiesResponse({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': pulumi.Input.mapInputValue<ApiKeyAuthCredentialsResponse, Map<String, dynamic>>(credentials, (value) => value.toMap()),
    };
  }

  factory DataConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorPropertiesResponse(
      credentials: pulumi.Input.fromValue(ApiKeyAuthCredentialsResponse.fromMap((map['credentials']! as Map).cast<String, dynamic>())),
    );
  }
}
