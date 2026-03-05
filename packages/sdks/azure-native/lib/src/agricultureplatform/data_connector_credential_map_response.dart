// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_credentials_response.dart';

/// Mapping of data connector credentials.
class DataConnectorCredentialMapResponse {
  /// The key representing the credential.
  final pulumi.Input<String> key;
  /// The data connector credential value.
  final pulumi.Input<DataConnectorCredentialsResponse> value;

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
      'value': pulumi.Input.mapInputValue<DataConnectorCredentialsResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory DataConnectorCredentialMapResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorCredentialMapResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(DataConnectorCredentialsResponse.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

