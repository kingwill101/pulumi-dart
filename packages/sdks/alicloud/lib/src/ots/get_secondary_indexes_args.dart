// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_get_secondary_indexes_get_secondary_indexes_args_doc}
/// Arguments for getSecondaryIndexes.
/// {@endtemplate}
/// {@macro pulumi_ots_get_secondary_indexes_get_secondary_indexes_args_doc}
class GetSecondaryIndexesArgs {
  /// A list of secondary index IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// A regex string to filter results by secondary index name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of OTS table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetSecondaryIndexesArgs].
  /// [ids] A list of secondary index IDs.
  /// [instanceName] The name of OTS instance.
  /// [nameRegex] A regex string to filter results by secondary index name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tableName] The name of OTS table.
  const GetSecondaryIndexesArgs({
    this.ids,
    required this.instanceName,
    this.nameRegex,
    this.outputFile,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tableName': tableName,
    };
  }

  factory GetSecondaryIndexesArgs.fromMap(Map<String, dynamic> map) {
    return GetSecondaryIndexesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

