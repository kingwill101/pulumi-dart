// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogFederatedCatalog {
  /// Name of the connection to the external metastore.
  final pulumi.Input<String> connectionName;
  /// Type of connection used to access the federated catalog.
  final pulumi.Input<String> connectionType;
  /// Unique identifier for the federated catalog.
  final pulumi.Input<String> identifier;

  /// Creates a new [GetCatalogFederatedCatalog].
  /// [connectionName] Name of the connection to the external metastore.
  /// [connectionType] Type of connection used to access the federated catalog.
  /// [identifier] Unique identifier for the federated catalog.
  const GetCatalogFederatedCatalog({
    required this.connectionName,
    required this.connectionType,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'connectionType': connectionType,
      'identifier': identifier,
    };
  }

  factory GetCatalogFederatedCatalog.fromMap(Map<String, dynamic> map) {
    return GetCatalogFederatedCatalog(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
