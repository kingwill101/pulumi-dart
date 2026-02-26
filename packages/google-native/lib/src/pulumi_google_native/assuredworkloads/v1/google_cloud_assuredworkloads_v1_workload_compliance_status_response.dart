// ignore_for_file: unused_element, unnecessary_cast

/// Represents the Compliance Status of this workload
class GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse {
  /// Number of current resource violations which are not acknowledged.
  final int acknowledgedResourceViolationCount;

  /// Number of current orgPolicy violations which are acknowledged.
  final int acknowledgedViolationCount;

  /// Number of current resource violations which are acknowledged.
  final int activeResourceViolationCount;

  /// Number of current orgPolicy violations which are not acknowledged.
  final int activeViolationCount;

  GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse({
    required this.acknowledgedResourceViolationCount,
    required this.acknowledgedViolationCount,
    required this.activeResourceViolationCount,
    required this.activeViolationCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acknowledgedResourceViolationCount'] =
        acknowledgedResourceViolationCount;
    map['acknowledgedViolationCount'] = acknowledgedViolationCount;
    map['activeResourceViolationCount'] = activeResourceViolationCount;
    map['activeViolationCount'] = activeViolationCount;
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse(
      acknowledgedResourceViolationCount:
          map['acknowledgedResourceViolationCount'] as int,
      acknowledgedViolationCount: map['acknowledgedViolationCount'] as int,
      activeResourceViolationCount: map['activeResourceViolationCount'] as int,
      activeViolationCount: map['activeViolationCount'] as int,
    );
  }
}
