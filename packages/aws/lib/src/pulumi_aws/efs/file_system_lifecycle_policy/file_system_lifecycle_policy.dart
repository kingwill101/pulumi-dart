// ignore_for_file: unused_element, unnecessary_cast

class FileSystemLifecyclePolicy {
  /// Indicates how long it takes to transition files to the archive storage class. Requires transition_to_ia, Elastic Throughput and General Purpose performance mode. Valid values: `AFTER_1_DAY`, `AFTER_7_DAYS`, `AFTER_14_DAYS`, `AFTER_30_DAYS`, `AFTER_60_DAYS`, `AFTER_90_DAYS`, `AFTER_180_DAYS`, `AFTER_270_DAYS`, or `AFTER_365_DAYS`.
  final String? transitionToArchive;

  /// Indicates how long it takes to transition files to the IA storage class. Valid values: `AFTER_1_DAY`, `AFTER_7_DAYS`, `AFTER_14_DAYS`, `AFTER_30_DAYS`, `AFTER_60_DAYS`, `AFTER_90_DAYS`, `AFTER_180_DAYS`, `AFTER_270_DAYS`, or `AFTER_365_DAYS`.
  final String? transitionToIa;

  /// Describes the policy used to transition a file from infequent access storage to primary storage. Valid values: `AFTER_1_ACCESS`.
  final String? transitionToPrimaryStorageClass;

  FileSystemLifecyclePolicy({
    this.transitionToArchive,
    this.transitionToIa,
    this.transitionToPrimaryStorageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final transitionToArchiveValue = transitionToArchive;
    if (transitionToArchiveValue != null) {
      map['transitionToArchive'] = transitionToArchiveValue;
    }
    final transitionToIaValue = transitionToIa;
    if (transitionToIaValue != null) {
      map['transitionToIa'] = transitionToIaValue;
    }
    final transitionToPrimaryStorageClassValue =
        transitionToPrimaryStorageClass;
    if (transitionToPrimaryStorageClassValue != null) {
      map['transitionToPrimaryStorageClass'] =
          transitionToPrimaryStorageClassValue;
    }
    return map;
  }

  factory FileSystemLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return FileSystemLifecyclePolicy(
      transitionToArchive: map['transitionToArchive'] == null
          ? null
          : map['transitionToArchive'] as String,
      transitionToIa: map['transitionToIa'] == null
          ? null
          : map['transitionToIa'] as String,
      transitionToPrimaryStorageClass:
          map['transitionToPrimaryStorageClass'] == null
              ? null
              : map['transitionToPrimaryStorageClass'] as String,
    );
  }
}
