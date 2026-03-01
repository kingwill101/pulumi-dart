// ignore_for_file: unused_element, unnecessary_cast

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
  final String alwaysOnRole;
  /// Authentication related configuration for the SQL Server Instance.
  final AuthenticationResponse? authentication;
  /// Status of Azure Defender.
  final String azureDefenderStatus;
  /// Timestamp of last Azure Defender status update.
  final String azureDefenderStatusLastUpdated;
  /// The backup profile for the SQL server.
  final BackupPolicyResponse? backupPolicy;
  /// Client connection related configuration.
  final ClientConnectionResponse? clientConnection;
  /// SQL Server collation.
  final String collation;
  /// ARM Resource id of the container resource (Azure Arc for Servers).
  final String containerResourceId;
  /// The number of total cores of the Operating System Environment (OSE) hosting the SQL Server instance.
  final String? cores;
  /// The time when the resource was created.
  final String createTime;
  /// SQL Server current version.
  final String currentVersion;
  /// Database mirroring endpoint related properties.
  final DBMEndpointResponse? databaseMirroringEndpoint;
  /// Indicates whether database master key exists in SQL Server.
  final bool dbMasterKeyExists;
  /// SQL Server edition.
  final String? edition;
  /// Failover Cluster Instance properties.
  final FailoverClusterResponse? failoverCluster;
  /// Type of host for Azure Arc SQL Server
  final String? hostType;
  /// SQL Server instance name.
  final String? instanceName;
  /// Indicates whether DigiCert PKI root-authority certificate (trusted by Azure) exists in SQL Server and trusted for Azure database.windows.net domains.
  final bool isDigiCertPkiCertTrustConfigured;
  /// Indicates whether always On availability groups is enabled in SQL Server.
  final bool isHadrEnabled;
  /// Indicates whether Microsoft PKI root-authority certificate (trusted by Azure) exists in SQL Server and trusted for Azure database.windows.net domains.
  final bool isMicrosoftPkiCertTrustConfigured;
  /// The time when last successful inventory upload was performed.
  final String lastInventoryUploadTime;
  /// The time when last successful usage upload was performed.
  final String lastUsageUploadTime;
  /// SQL Server license type.
  final String licenseType;
  /// max server memory (MB) value configured for this instance.
  final double maxServerMemoryMB;
  /// Migration related configuration.
  final MigrationResponse? migration;
  /// The monitoring configuration.
  final MonitoringResponse? monitoring;
  /// SQL Server update level.
  final String patchLevel;
  /// SQL Server product ID.
  final String productId;
  /// The provisioning state of the Arc-enabled SQL Server resource.
  final String provisioningState;
  /// Indicates if the resource represents a SQL Server engine or a SQL Server component service installed on the host.
  final String? serviceType;
  /// The cloud connectivity status.
  final String status;
  /// Dynamic TCP ports used by SQL Server.
  final String tcpDynamicPorts;
  /// Static TCP ports used by SQL Server.
  final String tcpStaticPorts;
  /// An array of integers, where each value represents the enabled trace flags in SQL Server.
  final List<int> traceFlags;
  /// Upgrade Action for this resource is locked until it expires. The Expiration time indicated by this value. It is not locked when it is empty.
  final String? upgradeLockedUntil;
  /// The number of logical processors used by the SQL Server instance.
  final String vCore;
  /// SQL Server version.
  final String? version;
  /// The unique ID of the hybrid machine that this resource belongs to.
  final String vmId;

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
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'azureDefenderStatus': azureDefenderStatus,
      'azureDefenderStatusLastUpdated': azureDefenderStatusLastUpdated,
      'backupPolicy': ?backupPolicy == null ? null : backupPolicy!.toMap(),
      'clientConnection': ?clientConnection == null ? null : clientConnection!.toMap(),
      'collation': collation,
      'containerResourceId': containerResourceId,
      'cores': ?cores,
      'createTime': createTime,
      'currentVersion': currentVersion,
      'databaseMirroringEndpoint': ?databaseMirroringEndpoint == null ? null : databaseMirroringEndpoint!.toMap(),
      'dbMasterKeyExists': dbMasterKeyExists,
      'edition': ?edition,
      'failoverCluster': ?failoverCluster == null ? null : failoverCluster!.toMap(),
      'hostType': ?hostType,
      'instanceName': ?instanceName,
      'isDigiCertPkiCertTrustConfigured': isDigiCertPkiCertTrustConfigured,
      'isHadrEnabled': isHadrEnabled,
      'isMicrosoftPkiCertTrustConfigured': isMicrosoftPkiCertTrustConfigured,
      'lastInventoryUploadTime': lastInventoryUploadTime,
      'lastUsageUploadTime': lastUsageUploadTime,
      'licenseType': licenseType,
      'maxServerMemoryMB': maxServerMemoryMB,
      'migration': ?migration == null ? null : migration!.toMap(),
      'monitoring': ?monitoring == null ? null : monitoring!.toMap(),
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
      alwaysOnRole: map['alwaysOnRole'] as String,
      authentication: map['authentication'] == null ? null : AuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      azureDefenderStatus: map['azureDefenderStatus'] as String,
      azureDefenderStatusLastUpdated: map['azureDefenderStatusLastUpdated'] as String,
      backupPolicy: map['backupPolicy'] == null ? null : BackupPolicyResponse.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      clientConnection: map['clientConnection'] == null ? null : ClientConnectionResponse.fromMap((map['clientConnection'] as Map).cast<String, dynamic>()),
      collation: map['collation'] as String,
      containerResourceId: map['containerResourceId'] as String,
      cores: map['cores'] == null ? null : map['cores'] as String,
      createTime: map['createTime'] as String,
      currentVersion: map['currentVersion'] as String,
      databaseMirroringEndpoint: map['databaseMirroringEndpoint'] == null ? null : DBMEndpointResponse.fromMap((map['databaseMirroringEndpoint'] as Map).cast<String, dynamic>()),
      dbMasterKeyExists: map['dbMasterKeyExists'] as bool,
      edition: map['edition'] == null ? null : map['edition'] as String,
      failoverCluster: map['failoverCluster'] == null ? null : FailoverClusterResponse.fromMap((map['failoverCluster'] as Map).cast<String, dynamic>()),
      hostType: map['hostType'] == null ? null : map['hostType'] as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      isDigiCertPkiCertTrustConfigured: map['isDigiCertPkiCertTrustConfigured'] as bool,
      isHadrEnabled: map['isHadrEnabled'] as bool,
      isMicrosoftPkiCertTrustConfigured: map['isMicrosoftPkiCertTrustConfigured'] as bool,
      lastInventoryUploadTime: map['lastInventoryUploadTime'] as String,
      lastUsageUploadTime: map['lastUsageUploadTime'] as String,
      licenseType: map['licenseType'] as String,
      maxServerMemoryMB: map['maxServerMemoryMB'] as double,
      migration: map['migration'] == null ? null : MigrationResponse.fromMap((map['migration'] as Map).cast<String, dynamic>()),
      monitoring: map['monitoring'] == null ? null : MonitoringResponse.fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
      patchLevel: map['patchLevel'] as String,
      productId: map['productId'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceType: map['serviceType'] == null ? null : map['serviceType'] as String,
      status: map['status'] as String,
      tcpDynamicPorts: map['tcpDynamicPorts'] as String,
      tcpStaticPorts: map['tcpStaticPorts'] as String,
      traceFlags: (map['traceFlags'] as List).cast<int>(),
      upgradeLockedUntil: map['upgradeLockedUntil'] == null ? null : map['upgradeLockedUntil'] as String,
      vCore: map['vCore'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      vmId: map['vmId'] as String,
    );
  }
}

