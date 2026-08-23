// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// These properties lets user specify default catalog properties during workspace creation. Not allowed in Serverless ComputeMode workspace.
class DefaultCatalogPropertiesResponse {
  /// Specifies the initial Name of default catalog. If not specified, the name of the workspace will be used.
  final pulumi.Input<String>? initialName;
  /// Defines the initial type of the default catalog. Possible values (case-insensitive):  HiveMetastore, UnityCatalog
  final pulumi.Input<String>? initialType;

  /// Creates a new [DefaultCatalogPropertiesResponse].
  /// [initialName] Specifies the initial Name of default catalog. If not specified, the name of the workspace will be used.
  /// [initialType] Defines the initial type of the default catalog. Possible values (case-insensitive):  HiveMetastore, UnityCatalog
  const DefaultCatalogPropertiesResponse({
    this.initialName,
    this.initialType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialName': ?initialName,
      'initialType': ?initialType,
    };
  }

  factory DefaultCatalogPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DefaultCatalogPropertiesResponse(
      initialName: (() { final guardedValue = map['initialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialType: (() { final guardedValue = map['initialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
