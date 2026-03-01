// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_get_search_indexes_get_search_indexes_args_doc}
/// Arguments for getSearchIndexes.
/// {@endtemplate}
/// {@macro pulumi_ots_get_search_indexes_get_search_indexes_args_doc}
class GetSearchIndexesArgs {
  /// A list of search index IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// A regex string to filter results by search index name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of OTS table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetSearchIndexesArgs].
  /// [ids] A list of search index IDs.
  /// [instanceName] The name of OTS instance.
  /// [nameRegex] A regex string to filter results by search index name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tableName] The name of OTS table.
  GetSearchIndexesArgs({
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> tableName,
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

  factory GetSearchIndexesArgs.fromMap(Map<String, dynamic> map) {
    return GetSearchIndexesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

