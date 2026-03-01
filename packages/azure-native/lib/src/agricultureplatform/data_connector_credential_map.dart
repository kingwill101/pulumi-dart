// ignore_for_file: unused_element, unnecessary_cast

import 'data_connector_credentials.dart';

/// Mapping of data connector credentials.
class DataConnectorCredentialMap {
  /// The key representing the credential.
  final String key;
  /// The data connector credential value.
  final DataConnectorCredentials value;

  /// Creates a new [DataConnectorCredentialMap].
  /// [key] The key representing the credential.
  /// [value] The data connector credential value.
  DataConnectorCredentialMap({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value.toMap(),
    };
  }

  factory DataConnectorCredentialMap.fromMap(Map<String, dynamic> map) {
    return DataConnectorCredentialMap(
      key: map['key'] as String,
      value: DataConnectorCredentials.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

