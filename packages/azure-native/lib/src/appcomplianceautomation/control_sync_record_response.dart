// ignore_for_file: unused_element, unnecessary_cast


/// A class represent the control record synchronized from app compliance.
class ControlSyncRecordResponse {
  /// The Id of the control. e.g. "Operational_Security_10"
  final String? controlId;
  /// Control status synchronized from app compliance.
  final String? controlStatus;

  /// Creates a new [ControlSyncRecordResponse].
  /// [controlId] The Id of the control. e.g. "Operational_Security_10"
  /// [controlStatus] Control status synchronized from app compliance.
  ControlSyncRecordResponse({
    this.controlId,
    this.controlStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlId': ?controlId,
      'controlStatus': ?controlStatus,
    };
  }

  factory ControlSyncRecordResponse.fromMap(Map<String, dynamic> map) {
    return ControlSyncRecordResponse(
      controlId: map['controlId'] == null ? null : map['controlId'] as String,
      controlStatus: map['controlStatus'] == null ? null : map['controlStatus'] as String,
    );
  }
}

