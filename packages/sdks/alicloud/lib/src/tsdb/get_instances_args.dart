// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tsdb_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_tsdb_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// The app key.
  final pulumi.Input<String>? appKey;

  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// The engine type of instance. Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  final pulumi.Input<String>? engineType;

  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The query str.
  final pulumi.Input<String>? queryStr;

  /// Instance status, enumerative: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`.
  final pulumi.Input<String>? status;

  /// The status list.
  final pulumi.Input<String>? statusList;

  /// Creates a new [GetInstancesArgs].
  /// [appKey] The app key.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [engineType] The engine type of instance. Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  /// [ids] A list of Instance IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [queryStr] The query str.
  /// [status] Instance status, enumerative: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`.
  /// [statusList] The status list.
  GetInstancesArgs({
    this.appKey,
    this.enableDetails,
    this.engineType,
    this.ids,
    this.outputFile,
    this.queryStr,
    this.status,
    this.statusList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appKey': ?appKey,
      'enableDetails': ?enableDetails,
      'engineType': ?engineType,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'queryStr': ?queryStr,
      'status': ?status,
      'statusList': ?statusList,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      appKey: (() {
        final guardedValue = map['appKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      engineType: (() {
        final guardedValue = map['engineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryStr: (() {
        final guardedValue = map['queryStr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusList: (() {
        final guardedValue = map['statusList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
