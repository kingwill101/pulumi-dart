// ignore_for_file: unused_element, unnecessary_cast


/// ResourceMoveDetails will be returned in response to GetResource call from ARM
class ResourceMoveDetailsResponse {
  /// Completion time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  final String? completionTimeUtc;
  /// CorrelationId of latest ResourceMove operation attempted
  final String? operationId;
  /// ARM resource path of source resource
  final String? sourceResourcePath;
  /// Start time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  final String? startTimeUtc;
  /// ARM resource path of target resource used in latest ResourceMove operation
  final String? targetResourcePath;

  /// Creates a new [ResourceMoveDetailsResponse].
  /// [completionTimeUtc] Completion time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  /// [operationId] CorrelationId of latest ResourceMove operation attempted
  /// [sourceResourcePath] ARM resource path of source resource
  /// [startTimeUtc] Start time in UTC of latest ResourceMove operation attempted. ISO 8601 format.
  /// [targetResourcePath] ARM resource path of target resource used in latest ResourceMove operation
  ResourceMoveDetailsResponse({
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
      completionTimeUtc: map['completionTimeUtc'] == null ? null : map['completionTimeUtc'] as String,
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      sourceResourcePath: map['sourceResourcePath'] == null ? null : map['sourceResourcePath'] as String,
      startTimeUtc: map['startTimeUtc'] == null ? null : map['startTimeUtc'] as String,
      targetResourcePath: map['targetResourcePath'] == null ? null : map['targetResourcePath'] as String,
    );
  }
}

