// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HanaBackupClient resources.
class HanaBackupClientState {
  /// The alert settings. Valid value: `INHERITED`.
  final pulumi.Input<String>? alertSetting;
  /// The ID of the backup client.
  final pulumi.Input<String>? clientId;
  /// The installation information of the HBR clients.
  final pulumi.Input<String>? clientInfo;
  /// The ID of the SAP HANA instance.
  final pulumi.Input<String>? clusterId;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The status of the Hana Backup Client.
  final pulumi.Input<String>? status;
  /// Specifies whether to transmit data over HTTPS. Valid values: `true`, `false`.
  final pulumi.Input<bool>? useHttps;
  /// The ID of the backup vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [HanaBackupClientState].
  /// [alertSetting] The alert settings. Valid value: `INHERITED`.
  /// [clientId] The ID of the backup client.
  /// [clientInfo] The installation information of the HBR clients.
  /// [clusterId] The ID of the SAP HANA instance.
  /// [instanceId] The ID of the instance.
  /// [status] The status of the Hana Backup Client.
  /// [useHttps] Specifies whether to transmit data over HTTPS. Valid values: `true`, `false`.
  /// [vaultId] The ID of the backup vault.
  HanaBackupClientState({
    this.alertSetting,
    this.clientId,
    this.clientInfo,
    this.clusterId,
    this.instanceId,
    this.status,
    this.useHttps,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSetting': ?alertSetting,
      'clientId': ?clientId,
      'clientInfo': ?clientInfo,
      'clusterId': ?clusterId,
      'instanceId': ?instanceId,
      'status': ?status,
      'useHttps': ?useHttps,
      'vaultId': ?vaultId,
    };
  }

  factory HanaBackupClientState.fromMap(Map<String, dynamic> map) {
    return HanaBackupClientState(
      alertSetting: map['alertSetting'] == null ? null : (map['alertSetting'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientInfo: map['clientInfo'] == null ? null : (map['clientInfo'] as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      useHttps: map['useHttps'] == null ? null : (map['useHttps'] as bool).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

