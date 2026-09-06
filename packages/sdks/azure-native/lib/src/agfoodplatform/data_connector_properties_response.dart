// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataConnector Properties.
class DataConnectorPropertiesResponse {
  /// AuthCredentials abstract base class for Auth Purpose.
  final pulumi.Input<dynamic> credentials;

  /// Creates a new [DataConnectorPropertiesResponse].
  /// [credentials] AuthCredentials abstract base class for Auth Purpose.
  const DataConnectorPropertiesResponse({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials,
    };
  }

  factory DataConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataConnectorPropertiesResponse(
      credentials: pulumi.Input.fromValue(map['credentials']),
    );
  }
}
