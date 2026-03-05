// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_hana_instances_get_hana_instances_args_doc}
/// Arguments for getHanaInstances.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_hana_instances_get_hana_instances_args_doc}
class GetHanaInstancesArgs {
  /// A list of Hana Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Hana Instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the SAP HANA instance. Valid values:
  /// - `INITIALIZING`: The instance is being initialized.
  /// - `INITIALIZED`: The instance is registered.
  /// - `INVALID_HANA_NODE`: The instance is invalid.
  /// - `INITIALIZE_FAILED`: The client fails to be installed on the instance.
  final pulumi.Input<String>? status;
  /// The id of the vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [GetHanaInstancesArgs].
  /// [ids] A list of Hana Instance IDs.
  /// [nameRegex] A regex string to filter results by Hana Instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the SAP HANA instance. Valid values:
  /// [vaultId] The id of the vault.
  GetHanaInstancesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
      'vaultId': ?vaultId,
    };
  }

  factory GetHanaInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetHanaInstancesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

