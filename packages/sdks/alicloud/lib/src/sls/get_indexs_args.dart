// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_indexs_get_indexs_args_doc}
/// Arguments for getIndexs.
/// {@endtemplate}
/// {@macro pulumi_sls_get_indexs_get_indexs_args_doc}
class GetIndexsArgs {
  /// A list of Index IDs. The value is formulated as `&lt;project_name&gt;:&lt;logstore_name&gt;`.
  final pulumi.Input<List<String>>? ids;

  /// Logstore name
  final pulumi.Input<String> logstoreName;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Project name
  final pulumi.Input<String> projectName;

  /// Creates a new [GetIndexsArgs].
  /// [ids] A list of Index IDs. The value is formulated as `&lt;project_name&gt;:&lt;logstore_name&gt;`.
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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      logstoreName: pulumi.Input.fromValue(map['logstoreName'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
