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
    pulumi.Output<String>? appKey,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? engineType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? queryStr,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusList,
  }) :
      appKey = pulumi.Input.asOptionalInput<String>(appKey),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      queryStr = pulumi.Input.asOptionalInput<String>(queryStr),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusList = pulumi.Input.asOptionalInput<String>(statusList);

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
      appKey: map['appKey'] == null ? null : pulumi.Output.create<String>(map['appKey'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      engineType: map['engineType'] == null ? null : pulumi.Output.create<String>(map['engineType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      queryStr: map['queryStr'] == null ? null : pulumi.Output.create<String>(map['queryStr'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusList: map['statusList'] == null ? null : pulumi.Output.create<String>(map['statusList'] as String),
    );
  }
}

