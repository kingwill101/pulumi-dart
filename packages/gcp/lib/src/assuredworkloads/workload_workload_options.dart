// ignore_for_file: unused_element, unnecessary_cast

class WorkloadWorkloadOptions {
  /// Indicates type of KAJ enrollment for the workload. Currently, only specifiying KEY_ACCESS_TRANSPARENCY_OFF is implemented to not enroll in KAT-level KAJ enrollment for Regional Controls workloads. Possible values: KAJ_ENROLLMENT_TYPE_UNSPECIFIED, FULL_KAJ, EKM_ONLY, KEY_ACCESS_TRANSPARENCY_OFF
  final String? kajEnrollmentType;

  /// Creates a new [WorkloadWorkloadOptions].
  /// [kajEnrollmentType] Indicates type of KAJ enrollment for the workload. Currently, only specifiying KEY_ACCESS_TRANSPARENCY_OFF is implemented to not enroll in KAT-level KAJ enrollment for Regional Controls workloads. Possible values: KAJ_ENROLLMENT_TYPE_UNSPECIFIED, FULL_KAJ, EKM_ONLY, KEY_ACCESS_TRANSPARENCY_OFF
  WorkloadWorkloadOptions({
    this.kajEnrollmentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kajEnrollmentTypeValue = kajEnrollmentType;
    if (kajEnrollmentTypeValue != null) {
      map['kajEnrollmentType'] = kajEnrollmentTypeValue;
    }
    return map;
  }

  factory WorkloadWorkloadOptions.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadOptions(
      kajEnrollmentType: map['kajEnrollmentType'] == null
          ? null
          : map['kajEnrollmentType'] as String,
    );
  }
}
