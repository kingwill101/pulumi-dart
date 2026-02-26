// ignore_for_file: unused_element, unnecessary_cast

class GetFileSystemLifecyclePolicy {
  final String transitionToArchive;
  final String transitionToIa;
  final String transitionToPrimaryStorageClass;

  GetFileSystemLifecyclePolicy({
    required this.transitionToArchive,
    required this.transitionToIa,
    required this.transitionToPrimaryStorageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transitionToArchive'] = transitionToArchive;
    map['transitionToIa'] = transitionToIa;
    map['transitionToPrimaryStorageClass'] = transitionToPrimaryStorageClass;
    return map;
  }

  factory GetFileSystemLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return GetFileSystemLifecyclePolicy(
      transitionToArchive: map['transitionToArchive'] as String,
      transitionToIa: map['transitionToIa'] as String,
      transitionToPrimaryStorageClass:
          map['transitionToPrimaryStorageClass'] as String,
    );
  }
}
