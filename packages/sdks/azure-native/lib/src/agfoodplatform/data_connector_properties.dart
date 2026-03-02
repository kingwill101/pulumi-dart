// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_auth_credentials.dart';

/// DataConnector Properties.
class DataConnectorProperties {
  /// AuthCredentials abstract base class for Auth Purpose.
  final pulumi.Input<ApiKeyAuthCredentials> credentials;

  /// Creates a new [DataConnectorProperties].
  /// [credentials] AuthCredentials abstract base class for Auth Purpose.
  DataConnectorProperties({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': pulumi.Input.mapInputValue<ApiKeyAuthCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
    };
  }

  factory DataConnectorProperties.fromMap(Map<String, dynamic> map) {
    return DataConnectorProperties(
      credentials: (ApiKeyAuthCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

