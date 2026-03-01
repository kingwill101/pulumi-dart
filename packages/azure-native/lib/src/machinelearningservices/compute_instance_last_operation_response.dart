// ignore_for_file: unused_element, unnecessary_cast


/// The last operation on ComputeInstance.
class ComputeInstanceLastOperationResponse {
  /// Name of the last operation.
  final String? operationName;
  /// Operation status.
  final String? operationStatus;
  /// Time of the last operation.
  final String? operationTime;
  /// Trigger of operation.
  final String? operationTrigger;

  /// Creates a new [ComputeInstanceLastOperationResponse].
  /// [operationName] Name of the last operation.
  /// [operationStatus] Operation status.
  /// [operationTime] Time of the last operation.
  /// [operationTrigger] Trigger of operation.
  ComputeInstanceLastOperationResponse({
    this.operationName,
    this.operationStatus,
    this.operationTime,
    this.operationTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationName': ?operationName,
      'operationStatus': ?operationStatus,
      'operationTime': ?operationTime,
      'operationTrigger': ?operationTrigger,
    };
  }

  factory ComputeInstanceLastOperationResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceLastOperationResponse(
      operationName: map['operationName'] == null ? null : map['operationName'] as String,
      operationStatus: map['operationStatus'] == null ? null : map['operationStatus'] as String,
      operationTime: map['operationTime'] == null ? null : map['operationTime'] as String,
      operationTrigger: map['operationTrigger'] == null ? null : map['operationTrigger'] as String,
    );
  }
}

