// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cassandra_get_data_centers_get_data_centers_args_doc}
/// Arguments for getDataCenters.
/// {@endtemplate}
/// {@macro pulumi_cassandra_get_data_centers_get_data_centers_args_doc}
class GetDataCentersArgs {
  /// The cluster id of dataCenters belongs to.
  final pulumi.Input<String> clusterId;
  /// The list of Cassandra data center ids.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to apply to the cluster name.
  final pulumi.Input<String>? nameRegex;
  /// The name of file that can save the collection of data centers after running `pulumi preview`.
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDataCentersArgs].
  /// [clusterId] The cluster id of dataCenters belongs to.
  /// [ids] The list of Cassandra data center ids.
  /// [nameRegex] A regex string to apply to the cluster name.
  /// [outputFile] The name of file that can save the collection of data centers after running `pulumi preview`.
  const GetDataCentersArgs({
    required this.clusterId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetDataCentersArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCentersArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

