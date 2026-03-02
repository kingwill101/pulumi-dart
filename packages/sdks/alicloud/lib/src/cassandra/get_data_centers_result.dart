// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_centers_center.dart';

/// Result data returned by getDataCenters.
class GetDataCentersResult {
  /// A list of Cassandra data centers. Its every element contains the following attributes:
  final List<GetDataCentersCenter> centers;
  /// The ID of the Cassandra cluster.
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The list of Cassandra data center ids.
  final List<String> ids;
  final String? nameRegex;
  /// The name list of Cassandra data centers.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDataCentersResult].
  /// [centers] A list of Cassandra data centers. Its every element contains the following attributes:
  /// [clusterId] The ID of the Cassandra cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] The list of Cassandra data center ids.
  /// [nameRegex] Optional.
  /// [names] The name list of Cassandra data centers.
  /// [outputFile] Optional.
  GetDataCentersResult({
    required this.centers,
    required this.clusterId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centers': pulumi.Input.encodeList<GetDataCentersCenter, Map<String, dynamic>>(centers, (value) => value.toMap()),
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDataCentersResult.fromMap(Map<String, dynamic> map) {
    return GetDataCentersResult(
      centers: pulumi.Input.decodeList<GetDataCentersCenter>(map['centers'], (value) => GetDataCentersCenter.fromMap((value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

