// ignore_for_file: unused_element, unnecessary_cast


/// Represents the Compliance Status of this workload
class GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse {
  /// Number of current resource violations which are not acknowledged.
  final int acknowledgedResourceViolationCount;
  /// Number of current orgPolicy violations which are acknowledged.
  final int acknowledgedViolationCount;
  /// Number of current resource violations which are acknowledged.
  final int activeResourceViolationCount;
  /// Number of current orgPolicy violations which are not acknowledged.
  final int activeViolationCount;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse].
  /// [acknowledgedResourceViolationCount] Number of current resource violations which are not acknowledged.
  /// [acknowledgedViolationCount] Number of current orgPolicy violations which are acknowledged.
  /// [activeResourceViolationCount] Number of current resource violations which are acknowledged.
  /// [activeViolationCount] Number of current orgPolicy violations which are not acknowledged.
  GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse({
    required this.acknowledgedResourceViolationCount,
    required this.acknowledgedViolationCount,
    required this.activeResourceViolationCount,
    required this.activeViolationCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgedResourceViolationCount': acknowledgedResourceViolationCount,
      'acknowledgedViolationCount': acknowledgedViolationCount,
      'activeResourceViolationCount': activeResourceViolationCount,
      'activeViolationCount': activeViolationCount,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadComplianceStatusResponse(
      acknowledgedResourceViolationCount: map['acknowledgedResourceViolationCount'] as int,
      acknowledgedViolationCount: map['acknowledgedViolationCount'] as int,
      activeResourceViolationCount: map['activeResourceViolationCount'] as int,
      activeViolationCount: map['activeViolationCount'] as int,
    );
  }
}

