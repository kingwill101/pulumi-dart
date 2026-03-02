// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_get_tables_get_tables_args_doc}
/// Arguments for getTables.
/// {@endtemplate}
/// {@macro pulumi_ots_get_tables_get_tables_args_doc}
class GetTablesArgs {
  /// A list of table IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// A regex string to filter results by table name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetTablesArgs].
  /// [ids] A list of table IDs.
  /// [instanceName] The name of OTS instance.
  /// [nameRegex] A regex string to filter results by table name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetTablesArgs({
    this.ids,
    required this.instanceName,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTablesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceName: (map['instanceName'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

