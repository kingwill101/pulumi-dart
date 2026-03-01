// ignore_for_file: unused_element, unnecessary_cast


class GetHanaBackupClientsHanaBackupClient {
  /// The alert settings.
  final String alertSetting;
  /// The ID of the backup client.
  final String clientId;
  /// The name of the backup client.
  final String clientName;
  /// The type of the backup client.
  final String clientType;
  /// The version number of the backup client.
  final String clientVersion;
  /// The ID of the SAP HANA instance.
  final String clusterId;
  /// The id of the Hana Backup Client. It formats as `<vault_id>:<client_id>`.
  final String id;
  /// The ID of the instance.
  final String instanceId;
  /// The name of the ECS instance.
  final String instanceName;
  /// The maximum version number of the backup client.
  final String maxVersion;
  /// The network type.
  final String networkType;
  /// The status of the Hana Backup Client. Valid Values: `REGISTERED`, `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `UPGRADING`, `UPGRADE_FAILED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `STOPPED`, `UNKNOWN`.
  final String status;
  /// The status information.
  final String statusMessage;
  /// Indicates whether data is transmitted over HTTPS.
  final bool useHttps;
  /// The ID of the backup vault.
  final String vaultId;

  /// Creates a new [GetHanaBackupClientsHanaBackupClient].
  /// [alertSetting] The alert settings.
  /// [clientId] The ID of the backup client.
  /// [clientName] The name of the backup client.
  /// [clientType] The type of the backup client.
  /// [clientVersion] The version number of the backup client.
  /// [clusterId] The ID of the SAP HANA instance.
  /// [id] The id of the Hana Backup Client. It formats as `<vault_id>:<client_id>`.
  /// [instanceId] The ID of the instance.
  /// [instanceName] The name of the ECS instance.
  /// [maxVersion] The maximum version number of the backup client.
  /// [networkType] The network type.
  /// [status] The status of the Hana Backup Client. Valid Values: `REGISTERED`, `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `UPGRADING`, `UPGRADE_FAILED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `STOPPED`, `UNKNOWN`.
  /// [statusMessage] The status information.
  /// [useHttps] Indicates whether data is transmitted over HTTPS.
  /// [vaultId] The ID of the backup vault.
  GetHanaBackupClientsHanaBackupClient({
    required this.alertSetting,
    required this.clientId,
    required this.clientName,
    required this.clientType,
    required this.clientVersion,
    required this.clusterId,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.maxVersion,
    required this.networkType,
    required this.status,
    required this.statusMessage,
    required this.useHttps,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSetting': alertSetting,
      'clientId': clientId,
      'clientName': clientName,
      'clientType': clientType,
      'clientVersion': clientVersion,
      'clusterId': clusterId,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'maxVersion': maxVersion,
      'networkType': networkType,
      'status': status,
      'statusMessage': statusMessage,
      'useHttps': useHttps,
      'vaultId': vaultId,
    };
  }

  factory GetHanaBackupClientsHanaBackupClient.fromMap(Map<String, dynamic> map) {
    return GetHanaBackupClientsHanaBackupClient(
      alertSetting: map['alertSetting'] as String,
      clientId: map['clientId'] as String,
      clientName: map['clientName'] as String,
      clientType: map['clientType'] as String,
      clientVersion: map['clientVersion'] as String,
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      maxVersion: map['maxVersion'] as String,
      networkType: map['networkType'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      useHttps: map['useHttps'] as bool,
      vaultId: map['vaultId'] as String,
    );
  }
}

