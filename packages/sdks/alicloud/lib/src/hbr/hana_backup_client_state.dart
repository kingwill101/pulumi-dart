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
    pulumi.Output<String>? alertSetting,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientInfo,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? useHttps,
    pulumi.Output<String>? vaultId,
  }) :
      alertSetting = pulumi.Input.asOptionalInput<String>(alertSetting),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientInfo = pulumi.Input.asOptionalInput<String>(clientInfo),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      useHttps = pulumi.Input.asOptionalInput<bool>(useHttps),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      alertSetting: map['alertSetting'] == null ? null : pulumi.Output.create<String>(map['alertSetting'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientInfo: map['clientInfo'] == null ? null : pulumi.Output.create<String>(map['clientInfo'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      useHttps: map['useHttps'] == null ? null : pulumi.Output.create<bool>(map['useHttps'] as bool),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

