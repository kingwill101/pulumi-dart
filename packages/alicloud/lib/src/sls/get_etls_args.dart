// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_etls_get_etls_args_doc}
/// Arguments for getEtls.
/// {@endtemplate}
/// {@macro pulumi_sls_get_etls_get_etls_args_doc}
class GetEtlsArgs {
  /// A list of Etl IDs. The value is formulated as `<project>:<job_name>`.
  final pulumi.Input<List<String>>? ids;
  /// Source Logstore Name.
  final pulumi.Input<String> logstore;
  /// Query start row. The default value is 0.
  final pulumi.Input<int>? offset;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project Name
  final pulumi.Input<String> project;
  /// Specify the number of data processing tasks returned by the query
  final pulumi.Input<int>? size;

  /// Creates a new [GetEtlsArgs].
  /// [ids] A list of Etl IDs. The value is formulated as `<project>:<job_name>`.
  /// [logstore] Source Logstore Name.
  /// [offset] Query start row. The default value is 0.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [project] Project Name
  /// [size] Specify the number of data processing tasks returned by the query
  GetEtlsArgs({
    List<String>? ids,
    required String logstore,
    int? offset,
    String? outputFile,
    required String project,
    int? size,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      logstore = pulumi.Input.asInput<String>(logstore),
      offset = pulumi.Input.asOptionalInput<int>(offset),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      project = pulumi.Input.asInput<String>(project),
      size = pulumi.Input.asOptionalInput<int>(size);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'logstore': logstore,
      'offset': ?offset,
      'outputFile': ?outputFile,
      'project': project,
      'size': ?size,
    };
  }

  factory GetEtlsArgs.fromMap(Map<String, dynamic> map) {
    return GetEtlsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      logstore: map['logstore'] as String,
      offset: map['offset'] == null ? null : map['offset'] as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      project: map['project'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

