// ignore_for_file: unused_element, unnecessary_cast

class WorkloadSaaEnrollmentResponse {
  /// Indicates SAA enrollment setup error if any.
  final List<String>? setupErrors;

  /// Indicates SAA enrollment status of a given workload. Possible values: SETUP_STATE_UNSPECIFIED, STATUS_PENDING, STATUS_COMPLETE
  final String? setupStatus;

  /// Creates a new [WorkloadSaaEnrollmentResponse].
  /// [setupErrors] Indicates SAA enrollment setup error if any.
  /// [setupStatus] Indicates SAA enrollment status of a given workload. Possible values: SETUP_STATE_UNSPECIFIED, STATUS_PENDING, STATUS_COMPLETE
  WorkloadSaaEnrollmentResponse({this.setupErrors, this.setupStatus});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setupErrors': ?setupErrors,
      'setupStatus': ?setupStatus,
    };
  }

  factory WorkloadSaaEnrollmentResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadSaaEnrollmentResponse(
      setupErrors: map['setupErrors'] == null
          ? null
          : (map['setupErrors'] as List).cast<String>(),
      setupStatus: map['setupStatus'] == null
          ? null
          : map['setupStatus'] as String,
    );
  }
}
