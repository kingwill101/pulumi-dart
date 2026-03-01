// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_get_main_versions_get_main_versions_args_doc}
/// Arguments for getMainVersions.
/// {@endtemplate}
/// {@macro pulumi_emr_get_main_versions_get_main_versions_args_doc}
class GetMainVersionsArgs {
  /// The supported clusterType of this emr version.
  /// Possible values may be any one or combination of these: ["HADOOP", "DRUID", "KAFKA", "ZOOKEEPER", "FLINK", "CLICKHOUSE"]
  final pulumi.Input<List<String>>? clusterTypes;
  /// The version of the emr cluster instance. Possible values: `EMR-4.0.0`, `EMR-3.23.0`, `EMR-3.22.0`.
  final pulumi.Input<String>? emrVersion;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMainVersionsArgs].
  /// [clusterTypes] The supported clusterType of this emr version.
  /// [emrVersion] The version of the emr cluster instance. Possible values: `EMR-4.0.0`, `EMR-3.23.0`, `EMR-3.22.0`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMainVersionsArgs({
    pulumi.Output<List<String>>? clusterTypes,
    pulumi.Output<String>? emrVersion,
    pulumi.Output<String>? outputFile,
  }) :
      clusterTypes = pulumi.Input.asOptionalInput<List<String>>(clusterTypes),
      emrVersion = pulumi.Input.asOptionalInput<String>(emrVersion),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTypes': ?clusterTypes,
      'emrVersion': ?emrVersion,
      'outputFile': ?outputFile,
    };
  }

  factory GetMainVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetMainVersionsArgs(
      clusterTypes: map['clusterTypes'] == null ? null : pulumi.Output.create<List<String>>((map['clusterTypes'] as List).cast<String>()),
      emrVersion: map['emrVersion'] == null ? null : pulumi.Output.create<String>(map['emrVersion'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

