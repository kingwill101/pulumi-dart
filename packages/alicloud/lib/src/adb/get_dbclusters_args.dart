// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_get_dbclusters_get_dbclusters_args_doc}
/// Arguments for getDBClusters.
/// {@endtemplate}
/// {@macro pulumi_adb_get_dbclusters_get_dbclusters_args_doc}
class GetDBClustersArgs {
  /// The description of DBCluster.
  final pulumi.Input<String>? description;
  /// A regex string to filter results by DBCluster description.
  final pulumi.Input<String>? descriptionRegex;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of DBCluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDBClustersArgs].
  /// [description] The description of DBCluster.
  /// [descriptionRegex] A regex string to filter results by DBCluster description.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of DBCluster IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] A map of tags assigned to the cluster.
  GetDBClustersArgs({
    String? description,
    String? descriptionRegex,
    bool? enableDetails,
    List<String>? ids,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? resourceGroupId,
    String? status,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'descriptionRegex': ?descriptionRegex,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetDBClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetDBClustersArgs(
      description: map['description'] == null ? null : map['description'] as String,
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

