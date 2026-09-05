// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogFederatedCatalog {
  /// Name of the connection to the external metastore.
  final pulumi.Input<String?>? connectionName;
  /// Type of connection used to access the federated catalog.
  final pulumi.Input<String?>? connectionType;
  /// Unique identifier for the federated catalog.
  final pulumi.Input<String?>? identifier;

  /// Creates a new [CatalogFederatedCatalog].
  /// [connectionName] Name of the connection to the external metastore.
  /// [connectionType] Type of connection used to access the federated catalog.
  /// [identifier] Unique identifier for the federated catalog.
  const CatalogFederatedCatalog({
    this.connectionName,
    this.connectionType,
    this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'connectionType': ?connectionType,
      'identifier': ?identifier,
    };
  }

  factory CatalogFederatedCatalog.fromMap(Map<String, dynamic> map) {
    return CatalogFederatedCatalog(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
