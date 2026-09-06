// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataConnector Properties.
class DataConnectorProperties {
  /// AuthCredentials abstract base class for Auth Purpose.
  final pulumi.Input<dynamic> credentials;

  /// Creates a new [DataConnectorProperties].
  /// [credentials] AuthCredentials abstract base class for Auth Purpose.
  const DataConnectorProperties({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials,
    };
  }

  factory DataConnectorProperties.fromMap(Map<String, dynamic> map) {
    return DataConnectorProperties(
      credentials: pulumi.Input.fromValue(map['credentials']),
    );
  }
}
