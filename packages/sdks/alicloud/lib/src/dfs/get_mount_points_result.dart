// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mount_points_point.dart';

/// Result data returned by getMountPoints.
class GetMountPointsResult {
  final String fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetMountPointsPoint> points;
  final String? status;

  /// Creates a new [GetMountPointsResult].
  /// [fileSystemId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [points] Required.
  /// [status] Optional.
  GetMountPointsResult({
    required this.fileSystemId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.points,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'points': pulumi.Input.encodeList<GetMountPointsPoint, Map<String, dynamic>>(points, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetMountPointsResult.fromMap(Map<String, dynamic> map) {
    return GetMountPointsResult(
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      points: pulumi.Input.decodeList<GetMountPointsPoint>(map['points'], (value) => GetMountPointsPoint.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

