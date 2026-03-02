// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_response.dart';
import 'backup_policy_response.dart';
import 'client_connection_response.dart';
import 'dbmendpoint_response.dart';
import 'failover_cluster_response.dart';
import 'migration_response.dart';
import 'monitoring_response.dart';

/// Properties of SqlServerInstance.
class SqlServerInstancePropertiesResponse {
  /// The role of the SQL Server, based on availability.
  final pulumi.Input<String> alwaysOnRole;
  /// Authentication related configuration for the SQL Server Instance.
  final pulumi.Input<AuthenticationResponse>? authentication;
  /// Status of Azure Defender.
  final pulumi.Input<String> azureDefenderStatus;
  /// Timestamp of last Azure Defender status update.
  final pulumi.Input<String> azureDefenderStatusLastUpdated;
  /// The backup profile for the SQL server.
  final pulumi.Input<BackupPolicyResponse>? backupPolicy;
  /// Client connection related configuration.
  final pulumi.Input<ClientConnectionResponse>? clientConnection;
  /// SQL Server collation.
  final pulumi.Input<String> collation;
  /// ARM Resource id of the container resource (Azure Arc for Servers).
  final pulumi.Input<String> containerResourceId;
  /// The number of total cores of the Operating System Environment (OSE) hosting the SQL Server instance.
  final pulumi.Input<String>? cores;
  /// The time when the resource was created.
  final pulumi.Input<String> createTime;
  /// SQL Server current version.
  final pulumi.Input<String> currentVersion;
  /// Database mirroring endpoint related properties.
  final pulumi.Input<DBMEndpointResponse>? databaseMirroringEndpoint;
  /// Indicates whether database master key exists in SQL Server.
  final pulumi.Input<bool> dbMasterKeyExists;
  /// SQL Server edition.
  final pulumi.Input<String>? edition;
  /// Failover Cluster Instance properties.
  final pulumi.Input<FailoverClusterResponse>? failoverCluster;
  /// Type of host for Azure Arc SQL Server
  final pulumi.Input<String>? hostType;
  /// SQL Server instance name.
  final pulumi.Input<String>? instanceName;
  /// Indicates whether DigiCert PKI root-authority certificate (trusted by Azure) exists in SQL Server and trusted for Azure database.windows.net domains.
  final pulumi.Input<bool> isDigiCertPkiCertTrustConfigured;
  /// Indicates whether always On availability groups is enabled in SQL Server.
  final pulumi.Input<bool> isHadrEnabled;
  /// Indicates whether Microsoft PKI root-authority certificate (trusted by Azure) exists in SQL Server and trusted for Azure database.windows.net domains.
  final pulumi.Input<bool> isMicrosoftPkiCertTrustConfigured;
  /// The time when last successful inventory upload was performed.
  final pulumi.Input<String> lastInventoryUploadTime;
  /// The time when last successful usage upload was performed.
  final pulumi.Input<String> lastUsageUploadTime;
  /// SQL Server license type.
  final pulumi.Input<String> licenseType;
  /// max server memory (MB) value configured for this instance.
  final pulumi.Input<double> maxServerMemoryMB;
  /// Migration related configuration.
  final pulumi.Input<MigrationResponse>? migration;
  /// The monitoring configuration.
  final pulumi.Input<MonitoringResponse>? monitoring;
  /// SQL Server update level.
  final pulumi.Input<String> patchLevel;
  /// SQL Server product ID.
  final pulumi.Input<String> productId;
  /// The provisioning state of the Arc-enabled SQL Server resource.
  final pulumi.Input<String> provisioningState;
  /// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
  final pulumi.Input<String>? serviceType;
  /// The cloud connectivity status.
  final pulumi.Input<String> status;
  /// Dynamic TCP ports used by SQL Server.
  final pulumi.Input<String> tcpDynamicPorts;
  /// Static TCP ports used by SQL Server.
  final pulumi.Input<String> tcpStaticPorts;
  /// An array of integers, where each value represents the enabled trace flags in SQL Server.
  final pulumi.Input<List<int>> traceFlags;
  /// Upgrade Action for this resource is locked until it expires. The Expiration time indicated by this value. It is not locked when it is empty.
  final pulumi.Input<String>? upgradeLockedUntil;
  /// The number of logical processors used by the SQL Server instance.
  final pulumi.Input<String> vCore;
  /// SQL Server version.
  final pulumi.Input<String>? version;
  /// The unique ID of the hybrid machine that this resource belongs to.
  final pulumi.Input<String> vmId;

  /// Creates a new [SqlServerInstancePropertiesResponse].
  /// [alwaysOnRole] The role of the SQL Server, based on availability.
  /// [authentication] Authentication related configuration for the SQL Server Instance.
  /// [azureDefenderStatus] Status of Azure Defender.
  /// [azureDefenderStatusLastUpdated] Timestamp of last Azure Defender status update.
  /// [backupPolicy] The backup profile for the SQL server.
  /// [clientConnection] Client connection related configuration.
  /// [collation] SQL Server collation.
  /// [containerResourceId] ARM Resource id of the container resource (Azure Arc for Servers).
  /// [cores] The number of total cores of the Operating System Environment (OSE) hosting the SQL Server instance.
  /// [createTime] The time when the resource was created.
  /// [currentVersion] SQL Server current version.
  /// [databaseMirroringEndpoint] Database mirroring endpoint related properties.
  /// [dbMasterKeyExists] Indicates whether database master key exists in SQL Server.
  /// [edition] SQL Server edition.
  /// [failoverCluster] Failover Cluster Instance properties.
  /// [hostType] Type of host for Azure Arc SQL Server
  /// [instanceName] SQL Server instance name.
  /// [isDigiCertPkiCertTrustConfigured] Indicates whether DigiCert PKI root-authority certificate (trusted by Azure) exists in SQL Server and trusted for Azure database.windows.net domains.
  /// [isHadrEnabled] Indicates whether always On availability groups is enabled in SQL Server.
  /// [isMicrosoftPkiCertTrustConfigured] Indicates whether Microsoft PKI root-authority certificate (trusted by Azure) exists in SQL Server and trusted for Azure database.windows.net domains.
  /// [lastInventoryUploadTime] The time when last successful inventory upload was performed.
  /// [lastUsageUploadTime] The time when last successful usage upload was performed.
  /// [licenseType] SQL Server license type.
  /// [maxServerMemoryMB] max server memory (MB) value configured for this instance.
  /// [migration] Migration related configuration.
  /// [monitoring] The monitoring configuration.
  /// [patchLevel] SQL Server update level.
  /// [productId] SQL Server product ID.
  /// [provisioningState] The provisioning state of the Arc-enabled SQL Server resource.
  /// [serviceType] Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
  /// [status] The cloud connectivity status.
  /// [tcpDynamicPorts] Dynamic TCP ports used by SQL Server.
  /// [tcpStaticPorts] Static TCP ports used by SQL Server.
  /// [traceFlags] An array of integers, where each value represents the enabled trace flags in SQL Server.
  /// [upgradeLockedUntil] Upgrade Action for this resource is locked until it expires. The Expiration time indicated by this value. It is not locked when it is empty.
  /// [vCore] The number of logical processors used by the SQL Server instance.
  /// [version] SQL Server version.
  /// [vmId] The unique ID of the hybrid machine that this resource belongs to.
  SqlServerInstancePropertiesResponse({
    required this.alwaysOnRole,
    this.authentication,
    required this.azureDefenderStatus,
    required this.azureDefenderStatusLastUpdated,
    this.backupPolicy,
    this.clientConnection,
    required this.collation,
    required this.containerResourceId,
    this.cores,
    required this.createTime,
    required this.currentVersion,
    this.databaseMirroringEndpoint,
    required this.dbMasterKeyExists,
    this.edition,
    this.failoverCluster,
    this.hostType,
    this.instanceName,
    required this.isDigiCertPkiCertTrustConfigured,
    required this.isHadrEnabled,
    required this.isMicrosoftPkiCertTrustConfigured,
    required this.lastInventoryUploadTime,
    required this.lastUsageUploadTime,
    required this.licenseType,
    required this.maxServerMemoryMB,
    this.migration,
    this.monitoring,
    required this.patchLevel,
    required this.productId,
    required this.provisioningState,
    this.serviceType,
    required this.status,
    required this.tcpDynamicPorts,
    required this.tcpStaticPorts,
    required this.traceFlags,
    this.upgradeLockedUntil,
    required this.vCore,
    this.version,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOnRole': alwaysOnRole,
      'authentication': ?pulumi.Input.mapOptionalInputValue<AuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'azureDefenderStatus': azureDefenderStatus,
      'azureDefenderStatusLastUpdated': azureDefenderStatusLastUpdated,
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<BackupPolicyResponse, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'clientConnection': ?pulumi.Input.mapOptionalInputValue<ClientConnectionResponse, Map<String, dynamic>>(clientConnection, (value) => value.toMap()),
      'collation': collation,
      'containerResourceId': containerResourceId,
      'cores': ?cores,
      'createTime': createTime,
      'currentVersion': currentVersion,
      'databaseMirroringEndpoint': ?pulumi.Input.mapOptionalInputValue<DBMEndpointResponse, Map<String, dynamic>>(databaseMirroringEndpoint, (value) => value.toMap()),
      'dbMasterKeyExists': dbMasterKeyExists,
      'edition': ?edition,
      'failoverCluster': ?pulumi.Input.mapOptionalInputValue<FailoverClusterResponse, Map<String, dynamic>>(failoverCluster, (value) => value.toMap()),
      'hostType': ?hostType,
      'instanceName': ?instanceName,
      'isDigiCertPkiCertTrustConfigured': isDigiCertPkiCertTrustConfigured,
      'isHadrEnabled': isHadrEnabled,
      'isMicrosoftPkiCertTrustConfigured': isMicrosoftPkiCertTrustConfigured,
      'lastInventoryUploadTime': lastInventoryUploadTime,
      'lastUsageUploadTime': lastUsageUploadTime,
      'licenseType': licenseType,
      'maxServerMemoryMB': maxServerMemoryMB,
      'migration': ?pulumi.Input.mapOptionalInputValue<MigrationResponse, Map<String, dynamic>>(migration, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<MonitoringResponse, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'patchLevel': patchLevel,
      'productId': productId,
      'provisioningState': provisioningState,
      'serviceType': ?serviceType,
      'status': status,
      'tcpDynamicPorts': tcpDynamicPorts,
      'tcpStaticPorts': tcpStaticPorts,
      'traceFlags': traceFlags,
      'upgradeLockedUntil': ?upgradeLockedUntil,
      'vCore': vCore,
      'version': ?version,
      'vmId': vmId,
    };
  }

  factory SqlServerInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerInstancePropertiesResponse(
      alwaysOnRole: (map['alwaysOnRole'] as String).input(),
      authentication: map['authentication'] == null ? null : (AuthenticationResponse.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      azureDefenderStatus: (map['azureDefenderStatus'] as String).input(),
      azureDefenderStatusLastUpdated: (map['azureDefenderStatusLastUpdated'] as String).input(),
      backupPolicy: map['backupPolicy'] == null ? null : (BackupPolicyResponse.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())).input(),
      clientConnection: map['clientConnection'] == null ? null : (ClientConnectionResponse.fromMap((map['clientConnection']! as Map).cast<String, dynamic>())).input(),
      collation: (map['collation'] as String).input(),
      containerResourceId: (map['containerResourceId'] as String).input(),
      cores: map['cores'] == null ? null : (map['cores']! as String).input(),
      createTime: (map['createTime'] as String).input(),
      currentVersion: (map['currentVersion'] as String).input(),
      databaseMirroringEndpoint: map['databaseMirroringEndpoint'] == null ? null : (DBMEndpointResponse.fromMap((map['databaseMirroringEndpoint']! as Map).cast<String, dynamic>())).input(),
      dbMasterKeyExists: (map['dbMasterKeyExists'] as bool).input(),
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      failoverCluster: map['failoverCluster'] == null ? null : (FailoverClusterResponse.fromMap((map['failoverCluster']! as Map).cast<String, dynamic>())).input(),
      hostType: map['hostType'] == null ? null : (map['hostType']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      isDigiCertPkiCertTrustConfigured: (map['isDigiCertPkiCertTrustConfigured'] as bool).input(),
      isHadrEnabled: (map['isHadrEnabled'] as bool).input(),
      isMicrosoftPkiCertTrustConfigured: (map['isMicrosoftPkiCertTrustConfigured'] as bool).input(),
      lastInventoryUploadTime: (map['lastInventoryUploadTime'] as String).input(),
      lastUsageUploadTime: (map['lastUsageUploadTime'] as String).input(),
      licenseType: (map['licenseType'] as String).input(),
      maxServerMemoryMB: (map['maxServerMemoryMB'] as double).input(),
      migration: map['migration'] == null ? null : (MigrationResponse.fromMap((map['migration']! as Map).cast<String, dynamic>())).input(),
      monitoring: map['monitoring'] == null ? null : (MonitoringResponse.fromMap((map['monitoring']! as Map).cast<String, dynamic>())).input(),
      patchLevel: (map['patchLevel'] as String).input(),
      productId: (map['productId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType']! as String).input(),
      status: (map['status'] as String).input(),
      tcpDynamicPorts: (map['tcpDynamicPorts'] as String).input(),
      tcpStaticPorts: (map['tcpStaticPorts'] as String).input(),
      traceFlags: ((map['traceFlags'] as List).cast<int>()).input(),
      upgradeLockedUntil: map['upgradeLockedUntil'] == null ? null : (map['upgradeLockedUntil']! as String).input(),
      vCore: (map['vCore'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      vmId: (map['vmId'] as String).input(),
    );
  }
}

