// ignore_for_file: unused_element, unnecessary_cast


class GetEcsBackupClientsClient {
  /// The system architecture of client, only the ECS File Backup Client is available. Valid values: `AMD64` , `386`.
  final String archType;
  /// Client protected status. Valid values: `UNPROTECTED`, `PROTECTED`.
  final String backupStatus;
  /// The type of client. Valid values: `ECS_CLIENT` (ECS File Backup Client).
  final String clientType;
  /// The version of client.
  final String clientVersion;
  /// The creation time of client. Unix time in seconds.
  final String createTime;
  /// The data plane access point type. Valid Values: `PUBLIC`, `VPC`, `CLASSIC`.
  final String dataNetworkType;
  /// The data plane proxy settings. Valid Values: `DISABLE`, `USE_CONTROL_PROXY`, `CUSTOM`.
  /// * `USE_CONTROL_PROXY` (Default, the same with control plane)
  /// * `CUSTOM` (Custom configuration items for the HTTP protocol).
  final String dataProxySetting;
  /// The first ID of the resource.
  final String ecsBackupClientId;
  /// The hostname of ECS instance.
  final String hostname;
  /// The ID of the Ecs Backup Client.
  final String id;
  /// The ID of ECS instance. When the client type is ECS file backup client, it indicates the ID of ECS instance. When the client type is a local file backup client, it is a hardware fingerprint generated based on system information.
  final String instanceId;
  /// The name of ECS instance.
  final String instanceName;
  /// The last heartbeat time of client. Unix Time Seconds.
  final String lastHeartBeatTime;
  /// The latest version of client.
  final String maxClientVersion;
  /// The number of CPU cores used by a single backup task, 0 means no restrictions.
  final String maxCpuCore;
  /// The number of concurrent jobs for a single backup task, 0 means no restrictions.
  final String maxWorker;
  /// The operating system type of client, only the ECS File Backup Client is available. Valid values: `windows`, `linux`.
  final String osType;
  /// Intranet IP address of the instance, only available for ECS file backup client.
  final String privateIpv4;
  /// Custom data plane proxy server host address.
  final String proxyHost;
  /// The password of custom data plane proxy server.
  final String proxyPassword;
  /// Custom data plane proxy server host port.
  final String proxyPort;
  /// The username of custom data plane proxy server.
  final String proxyUser;
  /// The status of the resource.
  final String status;
  /// The update time of client. Unix Time Seconds.
  final String updatedTime;
  /// Indicates whether to use the HTTPS protocol. Valid values: `true`, `false`.
  final bool useHttps;
  /// The ID of Zone.
  final String zoneId;

  /// Creates a new [GetEcsBackupClientsClient].
  /// [archType] The system architecture of client, only the ECS File Backup Client is available. Valid values: `AMD64` , `386`.
  /// [backupStatus] Client protected status. Valid values: `UNPROTECTED`, `PROTECTED`.
  /// [clientType] The type of client. Valid values: `ECS_CLIENT` (ECS File Backup Client).
  /// [clientVersion] The version of client.
  /// [createTime] The creation time of client. Unix time in seconds.
  /// [dataNetworkType] The data plane access point type. Valid Values: `PUBLIC`, `VPC`, `CLASSIC`.
  /// [dataProxySetting] The data plane proxy settings. Valid Values: `DISABLE`, `USE_CONTROL_PROXY`, `CUSTOM`.
  /// [ecsBackupClientId] The first ID of the resource.
  /// [hostname] The hostname of ECS instance.
  /// [id] The ID of the Ecs Backup Client.
  /// [instanceId] The ID of ECS instance. When the client type is ECS file backup client, it indicates the ID of ECS instance. When the client type is a local file backup client, it is a hardware fingerprint generated based on system information.
  /// [instanceName] The name of ECS instance.
  /// [lastHeartBeatTime] The last heartbeat time of client. Unix Time Seconds.
  /// [maxClientVersion] The latest version of client.
  /// [maxCpuCore] The number of CPU cores used by a single backup task, 0 means no restrictions.
  /// [maxWorker] The number of concurrent jobs for a single backup task, 0 means no restrictions.
  /// [osType] The operating system type of client, only the ECS File Backup Client is available. Valid values: `windows`, `linux`.
  /// [privateIpv4] Intranet IP address of the instance, only available for ECS file backup client.
  /// [proxyHost] Custom data plane proxy server host address.
  /// [proxyPassword] The password of custom data plane proxy server.
  /// [proxyPort] Custom data plane proxy server host port.
  /// [proxyUser] The username of custom data plane proxy server.
  /// [status] The status of the resource.
  /// [updatedTime] The update time of client. Unix Time Seconds.
  /// [useHttps] Indicates whether to use the HTTPS protocol. Valid values: `true`, `false`.
  /// [zoneId] The ID of Zone.
  GetEcsBackupClientsClient({
    required this.archType,
    required this.backupStatus,
    required this.clientType,
    required this.clientVersion,
    required this.createTime,
    required this.dataNetworkType,
    required this.dataProxySetting,
    required this.ecsBackupClientId,
    required this.hostname,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.lastHeartBeatTime,
    required this.maxClientVersion,
    required this.maxCpuCore,
    required this.maxWorker,
    required this.osType,
    required this.privateIpv4,
    required this.proxyHost,
    required this.proxyPassword,
    required this.proxyPort,
    required this.proxyUser,
    required this.status,
    required this.updatedTime,
    required this.useHttps,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archType': archType,
      'backupStatus': backupStatus,
      'clientType': clientType,
      'clientVersion': clientVersion,
      'createTime': createTime,
      'dataNetworkType': dataNetworkType,
      'dataProxySetting': dataProxySetting,
      'ecsBackupClientId': ecsBackupClientId,
      'hostname': hostname,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'lastHeartBeatTime': lastHeartBeatTime,
      'maxClientVersion': maxClientVersion,
      'maxCpuCore': maxCpuCore,
      'maxWorker': maxWorker,
      'osType': osType,
      'privateIpv4': privateIpv4,
      'proxyHost': proxyHost,
      'proxyPassword': proxyPassword,
      'proxyPort': proxyPort,
      'proxyUser': proxyUser,
      'status': status,
      'updatedTime': updatedTime,
      'useHttps': useHttps,
      'zoneId': zoneId,
    };
  }

  factory GetEcsBackupClientsClient.fromMap(Map<String, dynamic> map) {
    return GetEcsBackupClientsClient(
      archType: map['archType'] as String,
      backupStatus: map['backupStatus'] as String,
      clientType: map['clientType'] as String,
      clientVersion: map['clientVersion'] as String,
      createTime: map['createTime'] as String,
      dataNetworkType: map['dataNetworkType'] as String,
      dataProxySetting: map['dataProxySetting'] as String,
      ecsBackupClientId: map['ecsBackupClientId'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      lastHeartBeatTime: map['lastHeartBeatTime'] as String,
      maxClientVersion: map['maxClientVersion'] as String,
      maxCpuCore: map['maxCpuCore'] as String,
      maxWorker: map['maxWorker'] as String,
      osType: map['osType'] as String,
      privateIpv4: map['privateIpv4'] as String,
      proxyHost: map['proxyHost'] as String,
      proxyPassword: map['proxyPassword'] as String,
      proxyPort: map['proxyPort'] as String,
      proxyUser: map['proxyUser'] as String,
      status: map['status'] as String,
      updatedTime: map['updatedTime'] as String,
      useHttps: map['useHttps'] as bool,
      zoneId: map['zoneId'] as String,
    );
  }
}

