// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsBackupClientsClient {
  /// The system architecture of client, only the ECS File Backup Client is available. Valid values: `AMD64` , `386`.
  final pulumi.Input<String> archType;
  /// Client protected status. Valid values: `UNPROTECTED`, `PROTECTED`.
  final pulumi.Input<String> backupStatus;
  /// The type of client. Valid values: `ECS_CLIENT` (ECS File Backup Client).
  final pulumi.Input<String> clientType;
  /// The version of client.
  final pulumi.Input<String> clientVersion;
  /// The creation time of client. Unix time in seconds.
  final pulumi.Input<String> createTime;
  /// The data plane access point type. Valid Values: `PUBLIC`, `VPC`, `CLASSIC`.
  final pulumi.Input<String> dataNetworkType;
  /// The data plane proxy settings. Valid Values: `DISABLE`, `USE_CONTROL_PROXY`, `CUSTOM`.
  /// * `USE_CONTROL_PROXY` (Default, the same with control plane)
  /// * `CUSTOM` (Custom configuration items for the HTTP protocol).
  final pulumi.Input<String> dataProxySetting;
  /// The first ID of the resource.
  final pulumi.Input<String> ecsBackupClientId;
  /// The hostname of ECS instance.
  final pulumi.Input<String> hostname;
  /// The ID of the Ecs Backup Client.
  final pulumi.Input<String> id;
  /// The ID of ECS instance. When the client type is ECS file backup client, it indicates the ID of ECS instance. When the client type is a local file backup client, it is a hardware fingerprint generated based on system information.
  final pulumi.Input<String> instanceId;
  /// The name of ECS instance.
  final pulumi.Input<String> instanceName;
  /// The last heartbeat time of client. Unix Time Seconds.
  final pulumi.Input<String> lastHeartBeatTime;
  /// The latest version of client.
  final pulumi.Input<String> maxClientVersion;
  /// The number of CPU cores used by a single backup task, 0 means no restrictions.
  final pulumi.Input<String> maxCpuCore;
  /// The number of concurrent jobs for a single backup task, 0 means no restrictions.
  final pulumi.Input<String> maxWorker;
  /// The operating system type of client, only the ECS File Backup Client is available. Valid values: `windows`, `linux`.
  final pulumi.Input<String> osType;
  /// Intranet IP address of the instance, only available for ECS file backup client.
  final pulumi.Input<String> privateIpv4;
  /// Custom data plane proxy server host address.
  final pulumi.Input<String> proxyHost;
  /// The password of custom data plane proxy server.
  final pulumi.Input<String> proxyPassword;
  /// Custom data plane proxy server host port.
  final pulumi.Input<String> proxyPort;
  /// The username of custom data plane proxy server.
  final pulumi.Input<String> proxyUser;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The update time of client. Unix Time Seconds.
  final pulumi.Input<String> updatedTime;
  /// Indicates whether to use the HTTPS protocol. Valid values: `true`, `false`.
  final pulumi.Input<bool> useHttps;
  /// The ID of Zone.
  final pulumi.Input<String> zoneId;

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
      archType: pulumi.Input.fromValue(map['archType'] as String),
      backupStatus: pulumi.Input.fromValue(map['backupStatus'] as String),
      clientType: pulumi.Input.fromValue(map['clientType'] as String),
      clientVersion: pulumi.Input.fromValue(map['clientVersion'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataNetworkType: pulumi.Input.fromValue(map['dataNetworkType'] as String),
      dataProxySetting: pulumi.Input.fromValue(map['dataProxySetting'] as String),
      ecsBackupClientId: pulumi.Input.fromValue(map['ecsBackupClientId'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      lastHeartBeatTime: pulumi.Input.fromValue(map['lastHeartBeatTime'] as String),
      maxClientVersion: pulumi.Input.fromValue(map['maxClientVersion'] as String),
      maxCpuCore: pulumi.Input.fromValue(map['maxCpuCore'] as String),
      maxWorker: pulumi.Input.fromValue(map['maxWorker'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      privateIpv4: pulumi.Input.fromValue(map['privateIpv4'] as String),
      proxyHost: pulumi.Input.fromValue(map['proxyHost'] as String),
      proxyPassword: pulumi.Input.fromValue(map['proxyPassword'] as String),
      proxyPort: pulumi.Input.fromValue(map['proxyPort'] as String),
      proxyUser: pulumi.Input.fromValue(map['proxyUser'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
      useHttps: pulumi.Input.fromValue(map['useHttps'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

