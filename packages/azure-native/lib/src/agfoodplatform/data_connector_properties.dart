// ignore_for_file: unused_element, unnecessary_cast

import 'api_key_auth_credentials.dart';

/// DataConnector Properties.
class DataConnectorProperties {
  /// AuthCredentials abstract base class for Auth Purpose.
  final ApiKeyAuthCredentials credentials;

  /// Creates a new [DataConnectorProperties].
  /// [credentials] AuthCredentials abstract base class for Auth Purpose.
  DataConnectorProperties({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials.toMap(),
    };
  }

  factory DataConnectorProperties.fromMap(Map<String, dynamic> map) {
    return DataConnectorProperties(
      credentials: ApiKeyAuthCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
    );
  }
}

