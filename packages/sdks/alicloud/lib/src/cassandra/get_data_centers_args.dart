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
  GetDataCentersArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

