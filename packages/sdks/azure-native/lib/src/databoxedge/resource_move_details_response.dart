// ignore_for_file: unused_element, unnecessary_cast


/// Fields for tracking resource move
class ResourceMoveDetailsResponse {
  /// Denotes whether move operation is in progress
  final String? operationInProgress;
  /// Denotes the timeout of the operation to finish
  final String? operationInProgressLockTimeoutInUTC;

  /// Creates a new [ResourceMoveDetailsResponse].
  /// [operationInProgress] Denotes whether move operation is in progress
  /// [operationInProgressLockTimeoutInUTC] Denotes the timeout of the operation to finish
  ResourceMoveDetailsResponse({
    this.operationInProgress,
    this.operationInProgressLockTimeoutInUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationInProgress': ?operationInProgress,
      'operationInProgressLockTimeoutInUTC': ?operationInProgressLockTimeoutInUTC,
    };
  }

  factory ResourceMoveDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMoveDetailsResponse(
      operationInProgress: map['operationInProgress'] == null ? null : map['operationInProgress'] as String,
      operationInProgressLockTimeoutInUTC: map['operationInProgressLockTimeoutInUTC'] == null ? null : map['operationInProgressLockTimeoutInUTC'] as String,
    );
  }
}

