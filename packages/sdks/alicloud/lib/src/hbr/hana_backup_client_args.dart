// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_hana_backup_client_hana_backup_client_args_doc}
/// The set of arguments for HanaBackupClient.
/// {@endtemplate}
/// {@macro pulumi_hbr_hana_backup_client_hana_backup_client_args_doc}
class HanaBackupClientArgs {
  /// The alert settings. Valid value: `INHERITED`.
  final pulumi.Input<String>? alertSetting;
  /// The installation information of the HBR clients.
  final pulumi.Input<String>? clientInfo;
  /// Specifies whether to transmit data over HTTPS. Valid values: `true`, `false`.
  final pulumi.Input<bool>? useHttps;
  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [HanaBackupClientArgs].
  /// [alertSetting] The alert settings. Valid value: `INHERITED`.
  /// [clientInfo] The installation information of the HBR clients.
  /// [useHttps] Specifies whether to transmit data over HTTPS. Valid values: `true`, `false`.
  /// [vaultId] The ID of the backup vault.
  HanaBackupClientArgs({
    this.alertSetting,
    this.clientInfo,
    this.useHttps,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSetting': ?alertSetting,
      'clientInfo': ?clientInfo,
      'useHttps': ?useHttps,
      'vaultId': vaultId,
    };
  }

  factory HanaBackupClientArgs.fromMap(Map<String, dynamic> map) {
    return HanaBackupClientArgs(
      alertSetting: map['alertSetting'] == null ? null : (map['alertSetting']! as String).input(),
      clientInfo: map['clientInfo'] == null ? null : (map['clientInfo']! as String).input(),
      useHttps: map['useHttps'] == null ? null : (map['useHttps']! as bool).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

