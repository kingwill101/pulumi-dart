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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

