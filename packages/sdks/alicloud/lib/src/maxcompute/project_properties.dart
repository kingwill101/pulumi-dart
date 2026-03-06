// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_properties_encryption.dart';
import 'project_properties_table_lifecycle.dart';

class ProjectProperties {
  /// Whether to allow full table scan. Default: `false`.
  final pulumi.Input<bool>? allowFullScan;
  /// Whether to turn on Decimal2.0.
  final pulumi.Input<bool>? enableDecimal2;
  /// Enable multi-AZ storage disaster tolerance. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableDr;
  /// Storage encryption. For details, see [Storage Encryption](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/storage-encryption)
  /// &gt; **NOTE :**:
  /// To enable storage encryption, you need to modify the parameters of the basic attributes of the MaxCompute project. This operation permission is authenticated by RAM, and you need to have the Super_Administrator role permission of the corresponding project.
  ///
  /// To configure the permissions and IP whitelist parameters of the MaxCompute project, you must have the management permissions (Admin) of the corresponding project, including Super_Administrator, Admin, or custom management permissions. For more information, see the project management permissions list.
  ///
  /// You can turn on storage encryption only for projects that have not turned on storage encryption. For projects that have turned on storage encryption, you cannot turn off storage encryption or change the encryption algorithm. See `encryption` below.
  final pulumi.Input<ProjectPropertiesEncryption>? encryption;
  /// Set the number of days to retain backup data. During this time, you can restore the current version to any backup version. The value range of days is [0,30], and the default value is 1. 0 means backup is turned off.
  /// The effective policy after adjusting the backup cycle is:
  /// Extend the backup cycle: The new backup cycle takes effect on the same day.
  /// Shorten the backup cycle: The system will automatically delete backup data that has exceeded the retention cycle.
  final pulumi.Input<int>? retentionDays;
  /// Set the maximum threshold for single SQL Consumption, that is, set the ODPS. SQL. metering.value.max attribute. For more information, see [Consumption control](https://www.alibabacloud.com/help/en/maxcompute/product-overview/consumption-control).
  /// Unit: scan volume (GB)* complexity.
  final pulumi.Input<String>? sqlMeteringMax;
  /// Set whether the lifecycle of the table in the project needs to be configured, that is, set the ODPS. table.lifecycle property, See `table_lifecycle` below.
  final pulumi.Input<ProjectPropertiesTableLifecycle>? tableLifecycle;
  /// Project time zone, example value: Asia/Shanghai
  final pulumi.Input<String>? timezone;
  /// Data type version. Value:(1/2/hive)
  /// 1: The original MaxCompute type system.
  /// 2: New type system introduced by MaxCompute 2.0.
  /// hive: the type system of the Hive compatibility mode introduced by MaxCompute 2.0.
  final pulumi.Input<String>? typeSystem;

  /// Creates a new [ProjectProperties].
  /// [allowFullScan] Whether to allow full table scan. Default: `false`.
  /// [enableDecimal2] Whether to turn on Decimal2.0.
  /// [enableDr] Enable multi-AZ storage disaster tolerance. Valid values: `true`, `false`.
  /// [encryption] Storage encryption. For details, see [Storage Encryption](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/storage-encryption)
  /// [retentionDays] Set the number of days to retain backup data. During this time, you can restore the current version to any backup version. The value range of days is [0,30], and the default value is 1. 0 means backup is turned off.
  /// [sqlMeteringMax] Set the maximum threshold for single SQL Consumption, that is, set the ODPS. SQL. metering.value.max attribute. For more information, see [Consumption control](https://www.alibabacloud.com/help/en/maxcompute/product-overview/consumption-control).
  /// [tableLifecycle] Set whether the lifecycle of the table in the project needs to be configured, that is, set the ODPS. table.lifecycle property, See `table_lifecycle` below.
  /// [timezone] Project time zone, example value: Asia/Shanghai
  /// [typeSystem] Data type version. Value:(1/2/hive)
  const ProjectProperties({
    this.allowFullScan,
    this.enableDecimal2,
    this.enableDr,
    this.encryption,
    this.retentionDays,
    this.sqlMeteringMax,
    this.tableLifecycle,
    this.timezone,
    this.typeSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFullScan': ?allowFullScan,
      'enableDecimal2': ?enableDecimal2,
      'enableDr': ?enableDr,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ProjectPropertiesEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'retentionDays': ?retentionDays,
      'sqlMeteringMax': ?sqlMeteringMax,
      'tableLifecycle': ?pulumi.Input.mapOptionalInputValue<ProjectPropertiesTableLifecycle, Map<String, dynamic>>(tableLifecycle, (value) => value.toMap()),
      'timezone': ?timezone,
      'typeSystem': ?typeSystem,
    };
  }

  factory ProjectProperties.fromMap(Map<String, dynamic> map) {
    return ProjectProperties(
      allowFullScan: (() { final guardedValue = map['allowFullScan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDecimal2: (() { final guardedValue = map['enableDecimal2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDr: (() { final guardedValue = map['enableDr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectPropertiesEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlMeteringMax: (() { final guardedValue = map['sqlMeteringMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableLifecycle: (() { final guardedValue = map['tableLifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectPropertiesTableLifecycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeSystem: (() { final guardedValue = map['typeSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

