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
    pulumi.Output<String>? dbInstanceDescription,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

