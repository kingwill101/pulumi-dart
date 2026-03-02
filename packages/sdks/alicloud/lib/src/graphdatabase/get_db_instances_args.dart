// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_graphdatabase_get_db_instances_get_db_instances_args_doc}
/// Arguments for getDbInstances.
/// {@endtemplate}
/// {@macro pulumi_graphdatabase_get_db_instances_get_db_instances_args_doc}
class GetDbInstancesArgs {
  /// According to the practical example or notes.
  final pulumi.Input<String>? dbInstanceDescription;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Db Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Instance status. Value range: `Creating`, `Running`, `Deleting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDbInstancesArgs].
  /// [dbInstanceDescription] According to the practical example or notes.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Db Instance IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Instance status. Value range: `Creating`, `Running`, `Deleting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  GetDbInstancesArgs({
    this.dbInstanceDescription,
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceDescription': ?dbInstanceDescription,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDbInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbInstancesArgs(
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : (map['dbInstanceDescription'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

