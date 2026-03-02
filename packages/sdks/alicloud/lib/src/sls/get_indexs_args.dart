// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_indexs_get_indexs_args_doc}
/// Arguments for getIndexs.
/// {@endtemplate}
/// {@macro pulumi_sls_get_indexs_get_indexs_args_doc}
class GetIndexsArgs {
  /// A list of Index IDs. The value is formulated as `<project_name>:<logstore_name>`.
  final pulumi.Input<List<String>>? ids;
  /// Logstore name
  final pulumi.Input<String> logstoreName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project name
  final pulumi.Input<String> projectName;

  /// Creates a new [GetIndexsArgs].
  /// [ids] A list of Index IDs. The value is formulated as `<project_name>:<logstore_name>`.
  /// [logstoreName] Logstore name
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [projectName] Project name
  GetIndexsArgs({
    this.ids,
    required this.logstoreName,
    this.outputFile,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'logstoreName': logstoreName,
      'outputFile': ?outputFile,
      'projectName': projectName,
    };
  }

  factory GetIndexsArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      logstoreName: (map['logstoreName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      projectName: (map['projectName'] as String).input(),
    );
  }
}

