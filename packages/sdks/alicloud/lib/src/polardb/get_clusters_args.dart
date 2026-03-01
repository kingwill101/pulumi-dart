// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// Database type. Options are `MySQL`, `Oracle` and `PostgreSQL`. If no value is specified, all types are returned.
  final pulumi.Input<String>? dbType;
  /// A regex string to filter results by cluster description.
  final pulumi.Input<String>? descriptionRegex;
  /// A list of PolarDB cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// status of the cluster.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClustersArgs].
  /// [dbType] Database type. Options are `MySQL`, `Oracle` and `PostgreSQL`. If no value is specified, all types are returned.
  /// [descriptionRegex] A regex string to filter results by cluster description.
  /// [ids] A list of PolarDB cluster IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] status of the cluster.
  /// [tags] A mapping of tags to assign to the resource.
  GetClustersArgs({
    pulumi.Output<String>? dbType,
    pulumi.Output<String>? descriptionRegex,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dbType = pulumi.Input.asOptionalInput<String>(dbType),
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbType': ?dbType,
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      dbType: map['dbType'] == null ? null : pulumi.Output.create<String>(map['dbType'] as String),
      descriptionRegex: map['descriptionRegex'] == null ? null : pulumi.Output.create<String>(map['descriptionRegex'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

