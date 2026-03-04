// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_apps_get_apps_args_doc}
/// Arguments for getApps.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_apps_get_apps_args_doc}
class GetAppsArgs {
  /// A list of app IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter apps by name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAppsArgs].
  /// [ids] A list of app IDs.
  /// [nameRegex] A regex string to filter apps by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A mapping of tags to assign to the resource.
  GetAppsArgs({this.ids, this.nameRegex, this.outputFile, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetAppsArgs.fromMap(Map<String, dynamic> map) {
    return GetAppsArgs(
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
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
