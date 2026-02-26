// ignore_for_file: unused_element, unnecessary_cast

/// Signed Access Approvals (SAA) enrollment response.
class GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse {
  /// Indicates SAA enrollment setup error if any.
  final List<String> setupErrors;

  /// Indicates SAA enrollment status of a given workload.
  final String setupStatus;

  GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse({
    required this.setupErrors,
    required this.setupStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['setupErrors'] = setupErrors;
    map['setupStatus'] = setupStatus;
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse(
      setupErrors: (map['setupErrors'] as List).cast<String>(),
      setupStatus: map['setupStatus'] as String,
    );
  }
}
