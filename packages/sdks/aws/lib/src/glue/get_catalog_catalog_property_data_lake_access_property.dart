// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogCatalogPropertyDataLakeAccessProperty {
  /// Type of the catalog.
  final pulumi.Input<String> catalogType;
  /// Whether data lake access is enabled.
  final pulumi.Input<bool> dataLakeAccess;
  /// ARN of the IAM role used for data transfer.
  final pulumi.Input<String> dataTransferRole;
  /// ARN of the KMS key used for encryption.
  final pulumi.Input<String> kmsKey;
  /// Managed workgroup name.
  final pulumi.Input<String> managedWorkgroupName;
  /// Managed workgroup status.
  final pulumi.Input<String> managedWorkgroupStatus;
  /// Redshift database name.
  final pulumi.Input<String> redshiftDatabaseName;
  /// Status message.
  final pulumi.Input<String> statusMessage;

  /// Creates a new [GetCatalogCatalogPropertyDataLakeAccessProperty].
  /// [catalogType] Type of the catalog.
  /// [dataLakeAccess] Whether data lake access is enabled.
  /// [dataTransferRole] ARN of the IAM role used for data transfer.
  /// [kmsKey] ARN of the KMS key used for encryption.
  /// [managedWorkgroupName] Managed workgroup name.
  /// [managedWorkgroupStatus] Managed workgroup status.
  /// [redshiftDatabaseName] Redshift database name.
  /// [statusMessage] Status message.
  const GetCatalogCatalogPropertyDataLakeAccessProperty({
    required this.catalogType,
    required this.dataLakeAccess,
    required this.dataTransferRole,
    required this.kmsKey,
    required this.managedWorkgroupName,
    required this.managedWorkgroupStatus,
    required this.redshiftDatabaseName,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogType': catalogType,
      'dataLakeAccess': dataLakeAccess,
      'dataTransferRole': dataTransferRole,
      'kmsKey': kmsKey,
      'managedWorkgroupName': managedWorkgroupName,
      'managedWorkgroupStatus': managedWorkgroupStatus,
      'redshiftDatabaseName': redshiftDatabaseName,
      'statusMessage': statusMessage,
    };
  }

  factory GetCatalogCatalogPropertyDataLakeAccessProperty.fromMap(Map<String, dynamic> map) {
    return GetCatalogCatalogPropertyDataLakeAccessProperty(
      catalogType: pulumi.Input.fromValue(map['catalogType'] as String),
      dataLakeAccess: pulumi.Input.fromValue(map['dataLakeAccess'] as bool),
      dataTransferRole: pulumi.Input.fromValue(map['dataTransferRole'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      managedWorkgroupName: pulumi.Input.fromValue(map['managedWorkgroupName'] as String),
      managedWorkgroupStatus: pulumi.Input.fromValue(map['managedWorkgroupStatus'] as String),
      redshiftDatabaseName: pulumi.Input.fromValue(map['redshiftDatabaseName'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
