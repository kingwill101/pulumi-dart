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
      appKey: map['appKey'] == null ? null : (map['appKey']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      engineType: map['engineType'] == null ? null : (map['engineType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      queryStr: map['queryStr'] == null ? null : (map['queryStr']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      statusList: map['statusList'] == null ? null : (map['statusList']! as String).input(),
    );
  }
}

