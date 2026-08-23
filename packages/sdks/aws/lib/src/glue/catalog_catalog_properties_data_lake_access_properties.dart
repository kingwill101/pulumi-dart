// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogCatalogPropertiesDataLakeAccessProperties {
  /// Type of the catalog.
  final pulumi.Input<String>? catalogType;
  /// Whether data lake access is enabled.
  final pulumi.Input<bool>? dataLakeAccess;
  /// ARN of the IAM role used for data transfer.
  final pulumi.Input<String>? dataTransferRole;
  /// ARN of the KMS key used for encryption.
  final pulumi.Input<String>? kmsKey;
  /// Managed workgroup name.
  final pulumi.Input<String>? managedWorkgroupName;
  /// Managed workgroup status.
  final pulumi.Input<String>? managedWorkgroupStatus;
  /// Redshift database name.
  final pulumi.Input<String>? redshiftDatabaseName;
  /// Status message.
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [CatalogCatalogPropertiesDataLakeAccessProperties].
  /// [catalogType] Type of the catalog.
  /// [dataLakeAccess] Whether data lake access is enabled.
  /// [dataTransferRole] ARN of the IAM role used for data transfer.
  /// [kmsKey] ARN of the KMS key used for encryption.
  /// [managedWorkgroupName] Managed workgroup name.
  /// [managedWorkgroupStatus] Managed workgroup status.
  /// [redshiftDatabaseName] Redshift database name.
  /// [statusMessage] Status message.
  const CatalogCatalogPropertiesDataLakeAccessProperties({
    this.catalogType,
    this.dataLakeAccess,
    this.dataTransferRole,
    this.kmsKey,
    this.managedWorkgroupName,
    this.managedWorkgroupStatus,
    this.redshiftDatabaseName,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogType': ?catalogType,
      'dataLakeAccess': ?dataLakeAccess,
      'dataTransferRole': ?dataTransferRole,
      'kmsKey': ?kmsKey,
      'managedWorkgroupName': ?managedWorkgroupName,
      'managedWorkgroupStatus': ?managedWorkgroupStatus,
      'redshiftDatabaseName': ?redshiftDatabaseName,
      'statusMessage': ?statusMessage,
    };
  }

  factory CatalogCatalogPropertiesDataLakeAccessProperties.fromMap(Map<String, dynamic> map) {
    return CatalogCatalogPropertiesDataLakeAccessProperties(
      catalogType: (() { final guardedValue = map['catalogType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataLakeAccess: (() { final guardedValue = map['dataLakeAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataTransferRole: (() { final guardedValue = map['dataTransferRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedWorkgroupName: (() { final guardedValue = map['managedWorkgroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedWorkgroupStatus: (() { final guardedValue = map['managedWorkgroupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redshiftDatabaseName: (() { final guardedValue = map['redshiftDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
