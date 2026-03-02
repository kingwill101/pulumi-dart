// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_get_applications_get_applications_args_doc}
/// Arguments for getApplications.
/// {@endtemplate}
/// {@macro pulumi_edas_get_applications_get_applications_args_doc}
class GetApplicationsArgs {
  /// An ids string to filter results by the application id.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the application name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetApplicationsArgs].
  /// [ids] An ids string to filter results by the application id.
  /// [nameRegex] A regex string to filter results by the application name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetApplicationsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

