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
  const HanaBackupClientState({
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
      alertSetting: (() { final guardedValue = map['alertSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientInfo: (() { final guardedValue = map['clientInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useHttps: (() { final guardedValue = map['useHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

