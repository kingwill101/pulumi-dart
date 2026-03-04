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
  GetMainVersionsArgs({this.clusterTypes, this.emrVersion, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTypes': ?clusterTypes,
      'emrVersion': ?emrVersion,
      'outputFile': ?outputFile,
    };
  }

  factory GetMainVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetMainVersionsArgs(
      clusterTypes: (() {
        final guardedValue = map['clusterTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      emrVersion: (() {
        final guardedValue = map['emrVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
