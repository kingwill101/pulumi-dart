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
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.project,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
