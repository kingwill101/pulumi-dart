// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceMoveDetails will be returned in response to GetResource call from ARM
class ResourceMoveDetailsResponse {
  /// Completion time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  final pulumi.Input<String?>? completionTimeUtc;
  /// CorrelationId of latest ResourceMove operation attempted
  final pulumi.Input<String?>? operationId;
  /// ARM resource path of source resource
  final pulumi.Input<String?>? sourceResourcePath;
  /// Start time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  final pulumi.Input<String?>? startTimeUtc;
  /// ARM resource path of target resource used in latest ResourceMove operation
  final pulumi.Input<String?>? targetResourcePath;

  /// Creates a new [ResourceMoveDetailsResponse].
  /// [completionTimeUtc] Completion time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  /// [operationId] CorrelationId of latest ResourceMove operation attempted
  /// [sourceResourcePath] ARM resource path of source resource
  /// [startTimeUtc] Start time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  /// [targetResourcePath] ARM resource path of target resource used in latest ResourceMove operation
  const ResourceMoveDetailsResponse({
    this.completionTimeUtc,
    this.operationId,
    this.sourceResourcePath,
    this.startTimeUtc,
    this.targetResourcePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTimeUtc': ?completionTimeUtc,
      'operationId': ?operationId,
      'sourceResourcePath': ?sourceResourcePath,
      'startTimeUtc': ?startTimeUtc,
      'targetResourcePath': ?targetResourcePath,
    };
  }

  factory ResourceMoveDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMoveDetailsResponse(
      completionTimeUtc: (() { final guardedValue = map['completionTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourcePath: (() { final guardedValue = map['sourceResourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeUtc: (() { final guardedValue = map['startTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourcePath: (() { final guardedValue = map['targetResourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
