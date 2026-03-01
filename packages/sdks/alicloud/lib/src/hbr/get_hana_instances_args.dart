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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vaultId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

