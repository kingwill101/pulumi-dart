// ignore_for_file: unused_element, unnecessary_cast

class WorkloadSaaEnrollmentResponse {
  /// Indicates SAA enrollment setup error if any.
  final List<String>? setupErrors;

  /// Indicates SAA enrollment status of a given workload. Possible values: SETUP_STATE_UNSPECIFIED, STATUS_PENDING, STATUS_COMPLETE
  final String? setupStatus;

  WorkloadSaaEnrollmentResponse({
    this.setupErrors,
    this.setupStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final setupErrorsValue = setupErrors;
    if (setupErrorsValue != null) {
      map['setupErrors'] = setupErrorsValue;
    }
    final setupStatusValue = setupStatus;
    if (setupStatusValue != null) {
      map['setupStatus'] = setupStatusValue;
    }
    return map;
  }

  factory WorkloadSaaEnrollmentResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadSaaEnrollmentResponse(
      setupErrors: map['setupErrors'] == null
          ? null
          : (map['setupErrors'] as List).cast<String>(),
      setupStatus:
          map['setupStatus'] == null ? null : map['setupStatus'] as String,
    );
  }
}
