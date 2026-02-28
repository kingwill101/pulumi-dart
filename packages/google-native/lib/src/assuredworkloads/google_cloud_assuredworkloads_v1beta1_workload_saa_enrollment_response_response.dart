// ignore_for_file: unused_element, unnecessary_cast


/// Signed Access Approvals (SAA) enrollment response.
class GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse {
  /// Indicates SAA enrollment setup error if any.
  final List<String> setupErrors;
  /// Indicates SAA enrollment status of a given workload.
  final String setupStatus;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse].
  /// [setupErrors] Indicates SAA enrollment setup error if any.
  /// [setupStatus] Indicates SAA enrollment status of a given workload.
  GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse({
    required this.setupErrors,
    required this.setupStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setupErrors': setupErrors,
      'setupStatus': setupStatus,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse(
      setupErrors: (map['setupErrors'] as List).cast<String>(),
      setupStatus: map['setupStatus'] as String,
    );
  }
}

