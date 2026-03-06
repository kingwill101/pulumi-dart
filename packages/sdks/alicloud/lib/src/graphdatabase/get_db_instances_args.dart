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
  const GetDbInstancesArgs({
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
      dbInstanceDescription: (() { final guardedValue = map['dbInstanceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

