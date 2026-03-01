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
  GetSecondaryIndexesArgs({
    List<String>? ids,
    required String instanceName,
    String? nameRegex,
    String? outputFile,
    required String tableName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tableName = pulumi.Input.asInput<String>(tableName);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceName: map['instanceName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

