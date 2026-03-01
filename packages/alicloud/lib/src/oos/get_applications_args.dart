// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_applications_get_applications_args_doc}
/// Arguments for getApplications.
/// {@endtemplate}
/// {@macro pulumi_oos_get_applications_get_applications_args_doc}
class GetApplicationsArgs {
  /// A list of Application IDs. Its element value is same as Application Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Application name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetApplicationsArgs].
  /// [ids] A list of Application IDs. Its element value is same as Application Name.
  /// [nameRegex] A regex string to filter results by Application name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A mapping of tags to assign to the resource.
  GetApplicationsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    Map<String, String>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

