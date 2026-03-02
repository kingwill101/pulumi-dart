// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_targets_target.dart';

/// Result data returned by getSharedTargets.
class GetSharedTargetsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The resource shared ID of resource manager.
  final String? resourceShareId;
  /// The status of shared target.
  final String? status;
  /// A list of Resource Manager Shared Targets. Each element contains the following attributes:
  final List<GetSharedTargetsTarget> targets;

  /// Creates a new [GetSharedTargetsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [resourceShareId] The resource shared ID of resource manager.
  /// [status] The status of shared target.
  /// [targets] A list of Resource Manager Shared Targets. Each element contains the following attributes:
  GetSharedTargetsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    this.resourceShareId,
    this.status,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'resourceShareId': ?resourceShareId,
      'status': ?status,
      'targets': pulumi.Input.encodeList<GetSharedTargetsTarget, Map<String, dynamic>>(targets, (value) => value.toMap()),
    };
  }

  factory GetSharedTargetsResult.fromMap(Map<String, dynamic> map) {
    return GetSharedTargetsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceShareId: map['resourceShareId'] == null ? null : map['resourceShareId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      targets: pulumi.Input.decodeList<GetSharedTargetsTarget>(map['targets'], (value) => GetSharedTargetsTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

