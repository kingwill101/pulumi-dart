// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dbcluster_lake_versions_version.dart';

/// Result data returned by getDBClusterLakeVersions.
class GetDBClusterLakeVersionsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The status of the resource.
  final String? status;
  /// A list of Adb Db Clusters. Each element contains the following attributes:
  final List<GetDBClusterLakeVersionsVersion> versions;

  /// Creates a new [GetDBClusterLakeVersionsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [versions] A list of Adb Db Clusters. Each element contains the following attributes:
  GetDBClusterLakeVersionsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'versions': pulumi.Input.encodeList<GetDBClusterLakeVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetDBClusterLakeVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetDBClusterLakeVersionsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      versions: pulumi.Input.decodeList<GetDBClusterLakeVersionsVersion>(map['versions'], (value) => GetDBClusterLakeVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

