// ignore_for_file: unused_element, unnecessary_cast


/// Files not syncing error object
class ServerEndpointFilesNotSyncingErrorResponse {
  /// Error code (HResult)
  final int errorCode;
  /// Count of persistent files not syncing with the specified error code
  final double persistentCount;
  /// Count of transient files not syncing with the specified error code
  final double transientCount;

  /// Creates a new [ServerEndpointFilesNotSyncingErrorResponse].
  /// [errorCode] Error code (HResult)
  /// [persistentCount] Count of persistent files not syncing with the specified error code
  /// [transientCount] Count of transient files not syncing with the specified error code
  ServerEndpointFilesNotSyncingErrorResponse({
    required this.errorCode,
    required this.persistentCount,
    required this.transientCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'persistentCount': persistentCount,
      'transientCount': transientCount,
    };
  }

  factory ServerEndpointFilesNotSyncingErrorResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointFilesNotSyncingErrorResponse(
      errorCode: map['errorCode'] as int,
      persistentCount: map['persistentCount'] as double,
      transientCount: map['transientCount'] as double,
    );
  }
}

