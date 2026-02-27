// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSpecialistPool.
class GetSpecialistPoolAiplatformV1beta1Result {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  final String displayName;

  /// The resource name of the SpecialistPool.
  final String name;

  /// The resource name of the pending data labeling jobs.
  final List<String> pendingDataLabelingJobs;

  /// The email addresses of the managers in the SpecialistPool.
  final List<String> specialistManagerEmails;

  /// The number of managers in this SpecialistPool.
  final int specialistManagersCount;

  /// The email addresses of workers in the SpecialistPool.
  final List<String> specialistWorkerEmails;

  GetSpecialistPoolAiplatformV1beta1Result({
    required this.displayName,
    required this.name,
    required this.pendingDataLabelingJobs,
    required this.specialistManagerEmails,
    required this.specialistManagersCount,
    required this.specialistWorkerEmails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['name'] = name;
    map['pendingDataLabelingJobs'] = pendingDataLabelingJobs;
    map['specialistManagerEmails'] = specialistManagerEmails;
    map['specialistManagersCount'] = specialistManagersCount;
    map['specialistWorkerEmails'] = specialistWorkerEmails;
    return map;
  }

  factory GetSpecialistPoolAiplatformV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetSpecialistPoolAiplatformV1beta1Result(
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      pendingDataLabelingJobs:
          (map['pendingDataLabelingJobs'] as List).cast<String>(),
      specialistManagerEmails:
          (map['specialistManagerEmails'] as List).cast<String>(),
      specialistManagersCount: map['specialistManagersCount'] as int,
      specialistWorkerEmails:
          (map['specialistWorkerEmails'] as List).cast<String>(),
    );
  }
}
