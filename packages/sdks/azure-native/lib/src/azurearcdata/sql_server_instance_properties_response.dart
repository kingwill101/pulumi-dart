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
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            AuthenticationResponse,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'azureDefenderStatus': azureDefenderStatus,
      'azureDefenderStatusLastUpdated': azureDefenderStatusLastUpdated,
      'backupPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPolicyResponse,
            Map<String, dynamic>
          >(backupPolicy, (value) => value.toMap()),
      'clientConnection':
          ?pulumi.Input.mapOptionalInputValue<
            ClientConnectionResponse,
            Map<String, dynamic>
          >(clientConnection, (value) => value.toMap()),
      'collation': collation,
      'containerResourceId': containerResourceId,
      'cores': ?cores,
      'createTime': createTime,
      'currentVersion': currentVersion,
      'databaseMirroringEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            DBMEndpointResponse,
            Map<String, dynamic>
          >(databaseMirroringEndpoint, (value) => value.toMap()),
      'dbMasterKeyExists': dbMasterKeyExists,
      'edition': ?edition,
      'failoverCluster':
          ?pulumi.Input.mapOptionalInputValue<
            FailoverClusterResponse,
            Map<String, dynamic>
          >(failoverCluster, (value) => value.toMap()),
      'hostType': ?hostType,
      'instanceName': ?instanceName,
      'isDigiCertPkiCertTrustConfigured': isDigiCertPkiCertTrustConfigured,
      'isHadrEnabled': isHadrEnabled,
      'isMicrosoftPkiCertTrustConfigured': isMicrosoftPkiCertTrustConfigured,
      'lastInventoryUploadTime': lastInventoryUploadTime,
      'lastUsageUploadTime': lastUsageUploadTime,
      'licenseType': licenseType,
      'maxServerMemoryMB': maxServerMemoryMB,
      'migration':
          ?pulumi.Input.mapOptionalInputValue<
            MigrationResponse,
            Map<String, dynamic>
          >(migration, (value) => value.toMap()),
      'monitoring':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringResponse,
            Map<String, dynamic>
          >(monitoring, (value) => value.toMap()),
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

  factory SqlServerInstancePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlServerInstancePropertiesResponse(
      alwaysOnRole: pulumi.Input.fromValue(map['alwaysOnRole'] as String),
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthenticationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureDefenderStatus: pulumi.Input.fromValue(
        map['azureDefenderStatus'] as String,
      ),
      azureDefenderStatusLastUpdated: pulumi.Input.fromValue(
        map['azureDefenderStatusLastUpdated'] as String,
      ),
      backupPolicy: (() {
        final guardedValue = map['backupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientConnection: (() {
        final guardedValue = map['clientConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClientConnectionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      containerResourceId: pulumi.Input.fromValue(
        map['containerResourceId'] as String,
      ),
      cores: (() {
        final guardedValue = map['cores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      currentVersion: pulumi.Input.fromValue(map['currentVersion'] as String),
      databaseMirroringEndpoint: (() {
        final guardedValue = map['databaseMirroringEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DBMEndpointResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dbMasterKeyExists: pulumi.Input.fromValue(
        map['dbMasterKeyExists'] as bool,
      ),
      edition: (() {
        final guardedValue = map['edition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverCluster: (() {
        final guardedValue = map['failoverCluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FailoverClusterResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hostType: (() {
        final guardedValue = map['hostType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isDigiCertPkiCertTrustConfigured: pulumi.Input.fromValue(
        map['isDigiCertPkiCertTrustConfigured'] as bool,
      ),
      isHadrEnabled: pulumi.Input.fromValue(map['isHadrEnabled'] as bool),
      isMicrosoftPkiCertTrustConfigured: pulumi.Input.fromValue(
        map['isMicrosoftPkiCertTrustConfigured'] as bool,
      ),
      lastInventoryUploadTime: pulumi.Input.fromValue(
        map['lastInventoryUploadTime'] as String,
      ),
      lastUsageUploadTime: pulumi.Input.fromValue(
        map['lastUsageUploadTime'] as String,
      ),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      maxServerMemoryMB: pulumi.Input.fromValue(
        map['maxServerMemoryMB'] as double,
      ),
      migration: (() {
        final guardedValue = map['migration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MigrationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      monitoring: (() {
        final guardedValue = map['monitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      patchLevel: pulumi.Input.fromValue(map['patchLevel'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      serviceType: (() {
        final guardedValue = map['serviceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      tcpDynamicPorts: pulumi.Input.fromValue(map['tcpDynamicPorts'] as String),
      tcpStaticPorts: pulumi.Input.fromValue(map['tcpStaticPorts'] as String),
      traceFlags: pulumi.Input.fromValue(
        (map['traceFlags'] as List).cast<int>(),
      ),
      upgradeLockedUntil: (() {
        final guardedValue = map['upgradeLockedUntil'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vCore: pulumi.Input.fromValue(map['vCore'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmId: pulumi.Input.fromValue(map['vmId'] as String),
    );
  }
}
