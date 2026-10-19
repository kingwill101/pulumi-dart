// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_admin_password_source.dart';
import 'autonomous_database_customer_contacts_to_send_to_oci.dart';
import 'autonomous_database_db_tools_detail.dart';
import 'autonomous_database_long_term_backup_schedule.dart';
import 'autonomous_database_resource_pool_summary.dart';
import 'autonomous_database_scheduled_operation.dart';
import 'autonomous_database_source_configuration.dart';
import 'autonomous_database_timeouts.dart';
import 'autonomous_database_transportable_tablespace.dart';

/// Input properties used for looking up and filtering AutonomousDatabase resources.
class AutonomousDatabaseState {
  /// Actual data storage currently in use, in TB.
  final pulumi.Input<double?>? actualUsedDataStorageSizeInTbs;
  /// Sensitive password for the `ADMIN` user. Must be between 12 and 30 characters. This value is stored in Terraform state. Conflicts with `adminPasswordSource` and `adminPasswordWo`.
  final pulumi.Input<String?>? adminPassword;
  /// Source of the `ADMIN` password. Conflicts with `adminPassword` and `adminPasswordWo`. See `adminPasswordSource` Block below.
  final pulumi.Input<AutonomousDatabaseAdminPasswordSource?>? adminPasswordSource;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Sensitive write-only password for the `ADMIN` user. Must be between 12 and 30 characters. The value is sent to AWS but is never stored in pulumi preview or state. Requires Terraform 1.11 or later. Set `adminPasswordWoVersion` with this argument. Conflicts with `adminPassword` and `adminPasswordSource`.
  final pulumi.Input<String?>? adminPasswordWo;
  /// Arbitrary integer stored in state. Change this value together with `adminPasswordWo` to rotate the ADMIN password.
  final pulumi.Input<int?>? adminPasswordWoVersion;
  /// Storage currently allocated, in TB.
  final pulumi.Input<double?>? allocatedStorageSizeInTbs;
  /// List of between 1 and 1024 IP addresses allowed to access the database.
  final pulumi.Input<List<String>?>? allowlistedIps;
  /// ARN of the Autonomous Database.
  final pulumi.Input<String?>? arn;
  /// Automatic refresh frequency, in seconds, for a refreshable clone.
  final pulumi.Input<int?>? autoRefreshFrequencyInSeconds;
  /// Refresh lag, in seconds, between a refreshable clone and its source.
  final pulumi.Input<int?>? autoRefreshPointLagInSeconds;
  /// Maintenance schedule type. Valid values are `EARLY` and `REGULAR`.
  final pulumi.Input<String?>? autonomousMaintenanceScheduleType;
  /// Availability Zone of the database.
  final pulumi.Input<String?>? availabilityZone;
  /// Availability Zone ID of the database.
  final pulumi.Input<String?>? availabilityZoneId;
  /// Oracle Database versions available for upgrade.
  final pulumi.Input<List<String>?>? availableUpgradeVersions;
  /// Automatic backup retention period, in days.
  final pulumi.Input<int?>? backupRetentionPeriodInDays;
  /// Maximum compute capacity under the bring-your-own-license model. Minimum value is `2`.
  final pulumi.Input<double?>? byolComputeCountLimit;
  /// Database character set. Changing this value creates a new resource.
  final pulumi.Input<String?>? characterSet;
  /// Compute capacity in ECPUs or OCPUs. Valid values are from `0.1` through `512`.
  final pulumi.Input<double?>? computeCount;
  /// Compute model, either `ECPU` or `OCPU`.
  final pulumi.Input<String?>? computeModel;
  /// Allocated CPU core count. Valid values are from `1` through `128`.
  final pulumi.Input<int?>? cpuCoreCount;
  /// Creation date and time.
  final pulumi.Input<String?>? createdAt;
  /// Customer contacts that receive operational notifications from OCI. See `customerContactsToSendToOci` Block below.
  final pulumi.Input<List<AutonomousDatabaseCustomerContactsToSendToOci>?>? customerContactsToSendToOcis;
  /// Data volume size in GB. Valid values are from `20` through `393216`.
  final pulumi.Input<int?>? dataStorageSizeInGbs;
  /// Data volume size in TB. Configured values must be whole numbers from `1` through `384`. When this argument is omitted, AWS can return a fractional value, for example when storage is configured in GB.
  final pulumi.Input<double?>? dataStorageSizeInTbs;
  /// Oracle Database edition. Valid values are `STANDARD_EDITION` and `ENTERPRISE_EDITION`.
  final pulumi.Input<String?>? databaseEdition;
  /// Autonomous Database type.
  final pulumi.Input<String?>? databaseType;
  /// Database name. Must begin with a letter, contain only alphanumeric characters, and contain at most 30 characters.
  final pulumi.Input<String?>? dbName;
  /// Database management tools to enable. See `dbToolsDetails` Block below.
  final pulumi.Input<List<AutonomousDatabaseDbToolsDetail>?>? dbToolsDetails;
  /// Oracle Database software version.
  final pulumi.Input<String?>? dbVersion;
  /// Database workload. Valid values are `OLTP`, `AJD`, `APEX`, and `LH`.
  final pulumi.Input<String?>? dbWorkload;
  /// User-friendly database name.
  final pulumi.Input<String?>? displayName;
  /// Encryption key provider. Valid configurable values are `ORACLE_MANAGED` and `AWS_KMS`.
  final pulumi.Input<String?>? encryptionKeyProvider;
  /// Whether automatic compute scaling is enabled.
  final pulumi.Input<bool?>? isAutoScalingEnabled;
  /// Whether automatic storage scaling is enabled.
  final pulumi.Input<bool?>? isAutoScalingForStorageEnabled;
  /// Whether the backup retention period is locked against shortening.
  final pulumi.Input<bool?>? isBackupRetentionLocked;
  /// Whether local Oracle Data Guard is enabled.
  final pulumi.Input<bool?>? isLocalDataGuardEnabled;
  /// Whether mutual TLS is required for database connections.
  final pulumi.Input<bool?>? isMtlsConnectionRequired;
  /// Whether the database is a refreshable clone.
  final pulumi.Input<bool?>? isRefreshableClone;
  /// ARN of the AWS KMS key used when `encryptionKeyProvider` is `AWS_KMS`.
  final pulumi.Input<String?>? kmsKeyId;
  /// Oracle license model. Valid values are `BRING_YOUR_OWN_LICENSE` and `LICENSE_INCLUDED`.
  final pulumi.Input<String?>? licenseModel;
  /// Maximum data-loss limit, in seconds, for automatic local Data Guard failover.
  final pulumi.Input<int?>? localAdgAutoFailoverMaxDataLossLimit;
  /// Long-term backup schedule. See `longTermBackupSchedule` Block below.
  final pulumi.Input<AutonomousDatabaseLongTermBackupSchedule?>? longTermBackupSchedule;
  /// National character set. Changing this value creates a new resource.
  final pulumi.Input<String?>? ncharacterSet;
  /// OCI resource anchor name.
  final pulumi.Input<String?>? ociResourceAnchorName;
  /// OCI console URL.
  final pulumi.Input<String?>? ociUrl;
  /// Oracle Cloud Identifier.
  final pulumi.Input<String?>? ocid;
  /// ARN of the associated ODB network.
  final pulumi.Input<String?>? odbNetworkArn;
  /// ID of the ODB network used by the database. Changing this value creates a new resource.
  final pulumi.Input<String?>? odbNetworkId;
  /// Database open mode.
  final pulumi.Input<String?>? openMode;
  /// Progress of the current operation.
  final pulumi.Input<double?>? percentProgress;
  /// Database permission level.
  final pulumi.Input<String?>? permissionLevel;
  /// Private endpoint hostname.
  final pulumi.Input<String?>? privateEndpoint;
  /// Private endpoint IP address.
  final pulumi.Input<String?>? privateEndpointIp;
  /// Private endpoint label.
  final pulumi.Input<String?>? privateEndpointLabel;
  /// Refresh mode for a refreshable clone.
  final pulumi.Input<String?>? refreshableMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the resource-pool leader Autonomous Database.
  final pulumi.Input<String?>? resourcePoolLeaderId;
  /// Resource pool configuration. See `resourcePoolSummary` Block below.
  final pulumi.Input<AutonomousDatabaseResourcePoolSummary?>? resourcePoolSummary;
  /// Scheduled database start and stop times. See `scheduledOperations` Block below.
  final pulumi.Input<List<AutonomousDatabaseScheduledOperation>?>? scheduledOperations;
  /// Oracle service console URL.
  final pulumi.Input<String?>? serviceConsoleUrl;
  /// Source from which to create the database. Valid values are `NONE`, `DATABASE`, `BACKUP_FROM_ID`, `BACKUP_FROM_TIMESTAMP`, `CROSS_REGION_DATAGUARD`, `CROSS_REGION_DISASTER_RECOVERY`, and `CLONE_TO_REFRESHABLE`. Changing this value creates a new resource.
  final pulumi.Input<String?>? source;
  /// Source-specific configuration used during creation. See `sourceConfiguration` Block below. Changing this value creates a new resource.
  final pulumi.Input<AutonomousDatabaseSourceConfiguration?>? sourceConfiguration;
  /// ID of the source database or backup.
  final pulumi.Input<String?>? sourceId;
  /// Oracle SQL Developer Web URL.
  final pulumi.Input<String?>? sqlWebDeveloperUrl;
  /// List of between 1 and 1024 IP addresses allowed to access the standby database.
  final pulumi.Input<List<String>?>? standbyAllowlistedIps;
  /// Source of the standby allowlist. Valid values are `PRIMARY`, `SEPARATE`, and `NOT_APPLICABLE`.
  final pulumi.Input<String?>? standbyAllowlistedIpsSource;
  /// Current database lifecycle status.
  final pulumi.Input<String?>? status;
  /// Additional lifecycle status information.
  final pulumi.Input<String?>? statusReason;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// RFC3339 timestamp at which automatic refresh begins.
  final pulumi.Input<String?>? timeOfAutoRefreshStart;
  final pulumi.Input<AutonomousDatabaseTimeouts?>? timeouts;
  /// Transportable tablespace configuration. See `transportableTablespace` Block below. Changing this value creates a new resource.
  final pulumi.Input<AutonomousDatabaseTransportableTablespace?>? transportableTablespace;

  /// Creates a new [AutonomousDatabaseState].
  /// [actualUsedDataStorageSizeInTbs] Actual data storage currently in use, in TB.
  /// [adminPassword] Sensitive password for the `ADMIN` user. Must be between 12 and 30 characters. This value is stored in Terraform state. Conflicts with `adminPasswordSource` and `adminPasswordWo`.
  /// [adminPasswordSource] Source of the `ADMIN` password. Conflicts with `adminPassword` and `adminPasswordWo`. See `adminPasswordSource` Block below.
  /// [adminPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [adminPasswordWoVersion] Arbitrary integer stored in state. Change this value together with `adminPasswordWo` to rotate the ADMIN password.
  /// [allocatedStorageSizeInTbs] Storage currently allocated, in TB.
  /// [allowlistedIps] List of between 1 and 1024 IP addresses allowed to access the database.
  /// [arn] ARN of the Autonomous Database.
  /// [autoRefreshFrequencyInSeconds] Automatic refresh frequency, in seconds, for a refreshable clone.
  /// [autoRefreshPointLagInSeconds] Refresh lag, in seconds, between a refreshable clone and its source.
  /// [autonomousMaintenanceScheduleType] Maintenance schedule type. Valid values are `EARLY` and `REGULAR`.
  /// [availabilityZone] Availability Zone of the database.
  /// [availabilityZoneId] Availability Zone ID of the database.
  /// [availableUpgradeVersions] Oracle Database versions available for upgrade.
  /// [backupRetentionPeriodInDays] Automatic backup retention period, in days.
  /// [byolComputeCountLimit] Maximum compute capacity under the bring-your-own-license model. Minimum value is `2`.
  /// [characterSet] Database character set. Changing this value creates a new resource.
  /// [computeCount] Compute capacity in ECPUs or OCPUs. Valid values are from `0.1` through `512`.
  /// [computeModel] Compute model, either `ECPU` or `OCPU`.
  /// [cpuCoreCount] Allocated CPU core count. Valid values are from `1` through `128`.
  /// [createdAt] Creation date and time.
  /// [customerContactsToSendToOcis] Customer contacts that receive operational notifications from OCI. See `customerContactsToSendToOci` Block below.
  /// [dataStorageSizeInGbs] Data volume size in GB. Valid values are from `20` through `393216`.
  /// [dataStorageSizeInTbs] Data volume size in TB. Configured values must be whole numbers from `1` through `384`. When this argument is omitted, AWS can return a fractional value, for example when storage is configured in GB.
  /// [databaseEdition] Oracle Database edition. Valid values are `STANDARD_EDITION` and `ENTERPRISE_EDITION`.
  /// [databaseType] Autonomous Database type.
  /// [dbName] Database name. Must begin with a letter, contain only alphanumeric characters, and contain at most 30 characters.
  /// [dbToolsDetails] Database management tools to enable. See `dbToolsDetails` Block below.
  /// [dbVersion] Oracle Database software version.
  /// [dbWorkload] Database workload. Valid values are `OLTP`, `AJD`, `APEX`, and `LH`.
  /// [displayName] User-friendly database name.
  /// [encryptionKeyProvider] Encryption key provider. Valid configurable values are `ORACLE_MANAGED` and `AWS_KMS`.
  /// [isAutoScalingEnabled] Whether automatic compute scaling is enabled.
  /// [isAutoScalingForStorageEnabled] Whether automatic storage scaling is enabled.
  /// [isBackupRetentionLocked] Whether the backup retention period is locked against shortening.
  /// [isLocalDataGuardEnabled] Whether local Oracle Data Guard is enabled.
  /// [isMtlsConnectionRequired] Whether mutual TLS is required for database connections.
  /// [isRefreshableClone] Whether the database is a refreshable clone.
  /// [kmsKeyId] ARN of the AWS KMS key used when `encryptionKeyProvider` is `AWS_KMS`.
  /// [licenseModel] Oracle license model. Valid values are `BRING_YOUR_OWN_LICENSE` and `LICENSE_INCLUDED`.
  /// [localAdgAutoFailoverMaxDataLossLimit] Maximum data-loss limit, in seconds, for automatic local Data Guard failover.
  /// [longTermBackupSchedule] Long-term backup schedule. See `longTermBackupSchedule` Block below.
  /// [ncharacterSet] National character set. Changing this value creates a new resource.
  /// [ociResourceAnchorName] OCI resource anchor name.
  /// [ociUrl] OCI console URL.
  /// [ocid] Oracle Cloud Identifier.
  /// [odbNetworkArn] ARN of the associated ODB network.
  /// [odbNetworkId] ID of the ODB network used by the database. Changing this value creates a new resource.
  /// [openMode] Database open mode.
  /// [percentProgress] Progress of the current operation.
  /// [permissionLevel] Database permission level.
  /// [privateEndpoint] Private endpoint hostname.
  /// [privateEndpointIp] Private endpoint IP address.
  /// [privateEndpointLabel] Private endpoint label.
  /// [refreshableMode] Refresh mode for a refreshable clone.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePoolLeaderId] ID of the resource-pool leader Autonomous Database.
  /// [resourcePoolSummary] Resource pool configuration. See `resourcePoolSummary` Block below.
  /// [scheduledOperations] Scheduled database start and stop times. See `scheduledOperations` Block below.
  /// [serviceConsoleUrl] Oracle service console URL.
  /// [source] Source from which to create the database. Valid values are `NONE`, `DATABASE`, `BACKUP_FROM_ID`, `BACKUP_FROM_TIMESTAMP`, `CROSS_REGION_DATAGUARD`, `CROSS_REGION_DISASTER_RECOVERY`, and `CLONE_TO_REFRESHABLE`. Changing this value creates a new resource.
  /// [sourceConfiguration] Source-specific configuration used during creation. See `sourceConfiguration` Block below. Changing this value creates a new resource.
  /// [sourceId] ID of the source database or backup.
  /// [sqlWebDeveloperUrl] Oracle SQL Developer Web URL.
  /// [standbyAllowlistedIps] List of between 1 and 1024 IP addresses allowed to access the standby database.
  /// [standbyAllowlistedIpsSource] Source of the standby allowlist. Valid values are `PRIMARY`, `SEPARATE`, and `NOT_APPLICABLE`.
  /// [status] Current database lifecycle status.
  /// [statusReason] Additional lifecycle status information.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeOfAutoRefreshStart] RFC3339 timestamp at which automatic refresh begins.
  /// [timeouts] Optional.
  /// [transportableTablespace] Transportable tablespace configuration. See `transportableTablespace` Block below. Changing this value creates a new resource.
  const AutonomousDatabaseState({
    this.actualUsedDataStorageSizeInTbs,
    this.adminPassword,
    this.adminPasswordSource,
    this.adminPasswordWo,
    this.adminPasswordWoVersion,
    this.allocatedStorageSizeInTbs,
    this.allowlistedIps,
    this.arn,
    this.autoRefreshFrequencyInSeconds,
    this.autoRefreshPointLagInSeconds,
    this.autonomousMaintenanceScheduleType,
    this.availabilityZone,
    this.availabilityZoneId,
    this.availableUpgradeVersions,
    this.backupRetentionPeriodInDays,
    this.byolComputeCountLimit,
    this.characterSet,
    this.computeCount,
    this.computeModel,
    this.cpuCoreCount,
    this.createdAt,
    this.customerContactsToSendToOcis,
    this.dataStorageSizeInGbs,
    this.dataStorageSizeInTbs,
    this.databaseEdition,
    this.databaseType,
    this.dbName,
    this.dbToolsDetails,
    this.dbVersion,
    this.dbWorkload,
    this.displayName,
    this.encryptionKeyProvider,
    this.isAutoScalingEnabled,
    this.isAutoScalingForStorageEnabled,
    this.isBackupRetentionLocked,
    this.isLocalDataGuardEnabled,
    this.isMtlsConnectionRequired,
    this.isRefreshableClone,
    this.kmsKeyId,
    this.licenseModel,
    this.localAdgAutoFailoverMaxDataLossLimit,
    this.longTermBackupSchedule,
    this.ncharacterSet,
    this.ociResourceAnchorName,
    this.ociUrl,
    this.ocid,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.openMode,
    this.percentProgress,
    this.permissionLevel,
    this.privateEndpoint,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.refreshableMode,
    this.region,
    this.resourcePoolLeaderId,
    this.resourcePoolSummary,
    this.scheduledOperations,
    this.serviceConsoleUrl,
    this.source,
    this.sourceConfiguration,
    this.sourceId,
    this.sqlWebDeveloperUrl,
    this.standbyAllowlistedIps,
    this.standbyAllowlistedIpsSource,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.timeOfAutoRefreshStart,
    this.timeouts,
    this.transportableTablespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeInTbs': ?actualUsedDataStorageSizeInTbs,
      'adminPassword': ?adminPassword,
      'adminPasswordSource': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseAdminPasswordSource, Map<String, dynamic>>(adminPasswordSource, (value) => value.toMap()),
      'adminPasswordWo': ?adminPasswordWo,
      'adminPasswordWoVersion': ?adminPasswordWoVersion,
      'allocatedStorageSizeInTbs': ?allocatedStorageSizeInTbs,
      'allowlistedIps': ?allowlistedIps,
      'arn': ?arn,
      'autoRefreshFrequencyInSeconds': ?autoRefreshFrequencyInSeconds,
      'autoRefreshPointLagInSeconds': ?autoRefreshPointLagInSeconds,
      'autonomousMaintenanceScheduleType': ?autonomousMaintenanceScheduleType,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'availableUpgradeVersions': ?availableUpgradeVersions,
      'backupRetentionPeriodInDays': ?backupRetentionPeriodInDays,
      'byolComputeCountLimit': ?byolComputeCountLimit,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'cpuCoreCount': ?cpuCoreCount,
      'createdAt': ?createdAt,
      'customerContactsToSendToOcis': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabaseCustomerContactsToSendToOci>, List<Map<String, dynamic>>>(customerContactsToSendToOcis, (value) => pulumi.Input.encodeList<AutonomousDatabaseCustomerContactsToSendToOci, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataStorageSizeInGbs': ?dataStorageSizeInGbs,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'databaseEdition': ?databaseEdition,
      'databaseType': ?databaseType,
      'dbName': ?dbName,
      'dbToolsDetails': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabaseDbToolsDetail>, List<Map<String, dynamic>>>(dbToolsDetails, (value) => pulumi.Input.encodeList<AutonomousDatabaseDbToolsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbVersion': ?dbVersion,
      'dbWorkload': ?dbWorkload,
      'displayName': ?displayName,
      'encryptionKeyProvider': ?encryptionKeyProvider,
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isAutoScalingForStorageEnabled': ?isAutoScalingForStorageEnabled,
      'isBackupRetentionLocked': ?isBackupRetentionLocked,
      'isLocalDataGuardEnabled': ?isLocalDataGuardEnabled,
      'isMtlsConnectionRequired': ?isMtlsConnectionRequired,
      'isRefreshableClone': ?isRefreshableClone,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'localAdgAutoFailoverMaxDataLossLimit': ?localAdgAutoFailoverMaxDataLossLimit,
      'longTermBackupSchedule': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseLongTermBackupSchedule, Map<String, dynamic>>(longTermBackupSchedule, (value) => value.toMap()),
      'ncharacterSet': ?ncharacterSet,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'openMode': ?openMode,
      'percentProgress': ?percentProgress,
      'permissionLevel': ?permissionLevel,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointIp': ?privateEndpointIp,
      'privateEndpointLabel': ?privateEndpointLabel,
      'refreshableMode': ?refreshableMode,
      'region': ?region,
      'resourcePoolLeaderId': ?resourcePoolLeaderId,
      'resourcePoolSummary': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseResourcePoolSummary, Map<String, dynamic>>(resourcePoolSummary, (value) => value.toMap()),
      'scheduledOperations': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabaseScheduledOperation>, List<Map<String, dynamic>>>(scheduledOperations, (value) => pulumi.Input.encodeList<AutonomousDatabaseScheduledOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceConsoleUrl': ?serviceConsoleUrl,
      'source': ?source,
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
      'sourceId': ?sourceId,
      'sqlWebDeveloperUrl': ?sqlWebDeveloperUrl,
      'standbyAllowlistedIps': ?standbyAllowlistedIps,
      'standbyAllowlistedIpsSource': ?standbyAllowlistedIpsSource,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeOfAutoRefreshStart': ?timeOfAutoRefreshStart,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transportableTablespace': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseTransportableTablespace, Map<String, dynamic>>(transportableTablespace, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseState(
      actualUsedDataStorageSizeInTbs: (() { final guardedValue = map['actualUsedDataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminPasswordSource: (() { final guardedValue = map['adminPasswordSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseAdminPasswordSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminPasswordWo: (() { final guardedValue = map['adminPasswordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminPasswordWoVersion: (() { final guardedValue = map['adminPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      allocatedStorageSizeInTbs: (() { final guardedValue = map['allocatedStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      allowlistedIps: (() { final guardedValue = map['allowlistedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRefreshFrequencyInSeconds: (() { final guardedValue = map['autoRefreshFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      autoRefreshPointLagInSeconds: (() { final guardedValue = map['autoRefreshPointLagInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      autonomousMaintenanceScheduleType: (() { final guardedValue = map['autonomousMaintenanceScheduleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availableUpgradeVersions: (() { final guardedValue = map['availableUpgradeVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupRetentionPeriodInDays: (() { final guardedValue = map['backupRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      byolComputeCountLimit: (() { final guardedValue = map['byolComputeCountLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      characterSet: (() { final guardedValue = map['characterSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerContactsToSendToOcis: (() { final guardedValue = map['customerContactsToSendToOcis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabaseCustomerContactsToSendToOci>(guardedValue, (value) => AutonomousDatabaseCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataStorageSizeInGbs: (() { final guardedValue = map['dataStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      databaseEdition: (() { final guardedValue = map['databaseEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbToolsDetails: (() { final guardedValue = map['dbToolsDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabaseDbToolsDetail>(guardedValue, (value) => AutonomousDatabaseDbToolsDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dbVersion: (() { final guardedValue = map['dbVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbWorkload: (() { final guardedValue = map['dbWorkload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyProvider: (() { final guardedValue = map['encryptionKeyProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAutoScalingEnabled: (() { final guardedValue = map['isAutoScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAutoScalingForStorageEnabled: (() { final guardedValue = map['isAutoScalingForStorageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isBackupRetentionLocked: (() { final guardedValue = map['isBackupRetentionLocked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLocalDataGuardEnabled: (() { final guardedValue = map['isLocalDataGuardEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isMtlsConnectionRequired: (() { final guardedValue = map['isMtlsConnectionRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRefreshableClone: (() { final guardedValue = map['isRefreshableClone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAdgAutoFailoverMaxDataLossLimit: (() { final guardedValue = map['localAdgAutoFailoverMaxDataLossLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      longTermBackupSchedule: (() { final guardedValue = map['longTermBackupSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ncharacterSet: (() { final guardedValue = map['ncharacterSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openMode: (() { final guardedValue = map['openMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      permissionLevel: (() { final guardedValue = map['permissionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointIp: (() { final guardedValue = map['privateEndpointIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointLabel: (() { final guardedValue = map['privateEndpointLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshableMode: (() { final guardedValue = map['refreshableMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePoolLeaderId: (() { final guardedValue = map['resourcePoolLeaderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePoolSummary: (() { final guardedValue = map['resourcePoolSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseResourcePoolSummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduledOperations: (() { final guardedValue = map['scheduledOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabaseScheduledOperation>(guardedValue, (value) => AutonomousDatabaseScheduledOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceConsoleUrl: (() { final guardedValue = map['serviceConsoleUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlWebDeveloperUrl: (() { final guardedValue = map['sqlWebDeveloperUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyAllowlistedIps: (() { final guardedValue = map['standbyAllowlistedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      standbyAllowlistedIpsSource: (() { final guardedValue = map['standbyAllowlistedIpsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeOfAutoRefreshStart: (() { final guardedValue = map['timeOfAutoRefreshStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transportableTablespace: (() { final guardedValue = map['transportableTablespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutonomousDatabaseTransportableTablespace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
