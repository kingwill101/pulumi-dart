// ignore_for_file: unused_element, unnecessary_cast

import 'data_connector_credentials_response.dart';

/// Mapping of data connector credentials.
class DataConnectorCredentialMapResponse {
  /// The key representing the credential.
  final String key;
  /// The data connector credential value.
  final DataConnectorCredentialsResponse value;

  /// Creates a new [DataConnectorCredentialMapResponse].
  /// [key] The key representing the credential.
  /// [value] The data connector credential value.
  DataConnectorCredentialMapResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value.toMap(),
    };
  }

  factory DataConnectorCredentialMapResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorCredentialMapResponse(
      key: map['key'] as String,
      value: DataConnectorCredentialsResponse.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

