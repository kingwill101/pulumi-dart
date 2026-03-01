// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_vaults_get_vaults_args_doc}
/// Arguments for getVaults.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_vaults_get_vaults_args_doc}
class GetVaultsArgs {
  /// A list of Vault IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Vault name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Vault. Valid values: `CREATED`, `ERROR`, `UNKNOWN`.
  final pulumi.Input<String>? status;
  /// VaultType. Valid values: `STANDARD`,`OTS_BACKUP`.
  /// - `STANDARD` - used in OSS, NAS and ECS File backup.
  /// - `OTS_BACKUP` -  used in OTS backup.
  final pulumi.Input<String>? vaultType;

  /// Creates a new [GetVaultsArgs].
  /// [ids] A list of Vault IDs.
  /// [nameRegex] A regex string to filter results by Vault name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Vault. Valid values: `CREATED`, `ERROR`, `UNKNOWN`.
  /// [vaultType] VaultType. Valid values: `STANDARD`,`OTS_BACKUP`.
  GetVaultsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
    String? vaultType,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      vaultType = pulumi.Input.asOptionalInput<String>(vaultType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'vaultType': ?vaultType,
    };
  }

  factory GetVaultsArgs.fromMap(Map<String, dynamic> map) {
    return GetVaultsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vaultType: map['vaultType'] == null ? null : map['vaultType'] as String,
    );
  }
}

