// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHanaBackupClientsHanaBackupClient {
  /// The alert settings.
  final pulumi.Input<String> alertSetting;

  /// The ID of the backup client.
  final pulumi.Input<String> clientId;

  /// The name of the backup client.
  final pulumi.Input<String> clientName;

  /// The type of the backup client.
  final pulumi.Input<String> clientType;

  /// The version number of the backup client.
  final pulumi.Input<String> clientVersion;

  /// The ID of the SAP HANA instance.
  final pulumi.Input<String> clusterId;

  /// The id of the Hana Backup Client. It formats as `&lt;vault_id&gt;:&lt;client_id&gt;`.
  final pulumi.Input<String> id;

  /// The ID of the instance.
  final pulumi.Input<String> instanceId;

  /// The name of the ECS instance.
  final pulumi.Input<String> instanceName;

  /// The maximum version number of the backup client.
  final pulumi.Input<String> maxVersion;

  /// The network type.
  final pulumi.Input<String> networkType;

  /// The status of the Hana Backup Client. Valid Values: `REGISTERED`, `ACTIVATED`, `DEACTIVATED`, `INSTALLING`, `INSTALL_FAILED`, `NOT_INSTALLED`, `UPGRADING`, `UPGRADE_FAILED`, `UNINSTALLING`, `UNINSTALL_FAILED`, `STOPPED`, `UNKNOWN`.
  final pulumi.Input<String> status;

  /// The status information.
  final pulumi.Input<String> statusMessage;

  /// Indicates whether data is transmitted over HTTPS.
  final pulumi.Input<bool> useHttps;

  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [GetHanaBackupClientsHanaBackupClient].
  /// [alertSetting] The alert settings.
  /// [clientId] The ID of the backup client.
  /// [clientName] The name of the backup client.
  /// [clientType] The type of the backup client.
  /// [clientVersion] The version number of the backup client.
  /// [clusterId] The ID of the SAP HANA instance.
  /// [id] The id of the Hana Backup Client. It formats as `&lt;vault_id&gt;:&lt;client_id&gt;`.
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

  factory GetHanaBackupClientsHanaBackupClient.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHanaBackupClientsHanaBackupClient(
      alertSetting: pulumi.Input.fromValue(map['alertSetting'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientName: pulumi.Input.fromValue(map['clientName'] as String),
      clientType: pulumi.Input.fromValue(map['clientType'] as String),
      clientVersion: pulumi.Input.fromValue(map['clientVersion'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      maxVersion: pulumi.Input.fromValue(map['maxVersion'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      useHttps: pulumi.Input.fromValue(map['useHttps'] as bool),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}
