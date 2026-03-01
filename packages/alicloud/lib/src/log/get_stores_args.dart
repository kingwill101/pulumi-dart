// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_get_stores_get_stores_args_doc}
/// Arguments for getStores.
/// {@endtemplate}
/// {@macro pulumi_log_get_stores_get_stores_args_doc}
class GetStoresArgs {
  /// A list of store IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by store name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String> project;

  /// Creates a new [GetStoresArgs].
  /// [ids] A list of store IDs.
  /// [nameRegex] A regex string to filter results by store name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [project] Required.
  GetStoresArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    required String project,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'project': project,
    };
  }

  factory GetStoresArgs.fromMap(Map<String, dynamic> map) {
    return GetStoresArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      project: map['project'] as String,
    );
  }
}

