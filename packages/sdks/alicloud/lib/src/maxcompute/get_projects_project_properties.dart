// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_project_properties_encryption.dart';
import 'get_projects_project_properties_table_lifecycle.dart';

class GetProjectsProjectProperties {
  /// Whether to allow full table scan. Default: false.
  final pulumi.Input<bool> allowFullScan;
  /// Whether to turn on Decimal2.0.
  final pulumi.Input<bool> enableDecimal2;
  /// Storage encryption. For details, see [Storage Encryption](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/storage-encryption)> **NOTE :**:To enable storage encryption, you need to modify the parameters of the basic attributes of the MaxCompute project. This operation permission is authenticated by RAM, and you need to have the Super_Administrator role permission of the corresponding project.To configure the permissions and IP whitelist parameters of the MaxCompute project, you must have the management permissions (Admin) of the corresponding project, including Super_Administrator, Admin, or custom management permissions. For more information, see the project management permissions list.You can turn on storage encryption only for projects that have not turned on storage encryption. For projects that have turned on storage encryption, you cannot turn off storage encryption or change the encryption algorithm.
  final pulumi.Input<GetProjectsProjectPropertiesEncryption> encryption;
  /// Set the number of days to retain backup data. During this time, you can restore the current version to any backup version. The value range of days is [0,30], and the default value is 1. 0 means backup is turned off.The effective policy after adjusting the backup cycle is:Extend the backup cycle: The new backup cycle takes effect on the same day.Shorten the backup cycle: The system will automatically delete backup data that has exceeded the retention cycle.
  final pulumi.Input<int> retentionDays;
  /// Set the maximum threshold of single SQL consumption, that is, set the ODPS. SQL. metering.value.max attribute. For details, see [Consumption Monitoring Alarm](https://www.alibabacloud.com/help/en/maxcompute/product-overview/consumption-control).Unit: scan volume (GB)* complexity.
  final pulumi.Input<String> sqlMeteringMax;
  /// Set whether the lifecycle of the table in the project needs to be configured, that is, set the ODPS. table.lifecycle property,.
  final pulumi.Input<GetProjectsProjectPropertiesTableLifecycle> tableLifecycle;
  /// Project time zone, example value: Asia/Shanghai.
  final pulumi.Input<String> timezone;
  /// Data type version. Value:(1/2/hive)1: The original MaxCompute type system.2: New type system introduced by MaxCompute 2.0.hive: the type system of the Hive compatibility mode introduced by MaxCompute 2.0.
  final pulumi.Input<String> typeSystem;

  /// Creates a new [GetProjectsProjectProperties].
  /// [allowFullScan] Whether to allow full table scan. Default: false.
  /// [enableDecimal2] Whether to turn on Decimal2.0.
  /// [encryption] Storage encryption. For details, see [Storage Encryption](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/storage-encryption)> **NOTE :**:To enable storage encryption, you need to modify the parameters of the basic attributes of the MaxCompute project. This operation permission is authenticated by RAM, and you need to have the Super_Administrator role permission of the corresponding project.To configure the permissions and IP whitelist parameters of the MaxCompute project, you must have the management permissions (Admin) of the corresponding project, including Super_Administrator, Admin, or custom management permissions. For more information, see the project management permissions list.You can turn on storage encryption only for projects that have not turned on storage encryption. For projects that have turned on storage encryption, you cannot turn off storage encryption or change the encryption algorithm.
  /// [retentionDays] Set the number of days to retain backup data. During this time, you can restore the current version to any backup version. The value range of days is [0,30], and the default value is 1. 0 means backup is turned off.The effective policy after adjusting the backup cycle is:Extend the backup cycle: The new backup cycle takes effect on the same day.Shorten the backup cycle: The system will automatically delete backup data that has exceeded the retention cycle.
  /// [sqlMeteringMax] Set the maximum threshold of single SQL consumption, that is, set the ODPS. SQL. metering.value.max attribute. For details, see [Consumption Monitoring Alarm](https://www.alibabacloud.com/help/en/maxcompute/product-overview/consumption-control).Unit: scan volume (GB)* complexity.
  /// [tableLifecycle] Set whether the lifecycle of the table in the project needs to be configured, that is, set the ODPS. table.lifecycle property,.
  /// [timezone] Project time zone, example value: Asia/Shanghai.
  /// [typeSystem] Data type version. Value:(1/2/hive)1: The original MaxCompute type system.2: New type system introduced by MaxCompute 2.0.hive: the type system of the Hive compatibility mode introduced by MaxCompute 2.0.
  GetProjectsProjectProperties({
    required this.allowFullScan,
    required this.enableDecimal2,
    required this.encryption,
    required this.retentionDays,
    required this.sqlMeteringMax,
    required this.tableLifecycle,
    required this.timezone,
    required this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFullScan': allowFullScan,
      'enableDecimal2': enableDecimal2,
      'encryption': pulumi.Input.mapInputValue<GetProjectsProjectPropertiesEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'retentionDays': retentionDays,
      'sqlMeteringMax': sqlMeteringMax,
      'tableLifecycle': pulumi.Input.mapInputValue<GetProjectsProjectPropertiesTableLifecycle, Map<String, dynamic>>(tableLifecycle, (value) => value.toMap()),
      'timezone': timezone,
      'typeSystem': typeSystem,
    };
  }

  factory GetProjectsProjectProperties.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectProperties(
      allowFullScan: (map['allowFullScan'] as bool).input(),
      enableDecimal2: (map['enableDecimal2'] as bool).input(),
      encryption: (GetProjectsProjectPropertiesEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      retentionDays: (map['retentionDays'] as int).input(),
      sqlMeteringMax: (map['sqlMeteringMax'] as String).input(),
      tableLifecycle: (GetProjectsProjectPropertiesTableLifecycle.fromMap((map['tableLifecycle'] as Map).cast<String, dynamic>())).input(),
      timezone: (map['timezone'] as String).input(),
      typeSystem: (map['typeSystem'] as String).input(),
    );
  }
}

