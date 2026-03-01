// ignore_for_file: unused_element, unnecessary_cast


class GetFileSystemLifecyclePolicy {
  final String transitionToArchive;
  final String transitionToIa;
  final String transitionToPrimaryStorageClass;

  /// Creates a new [GetFileSystemLifecyclePolicy].
  /// [transitionToArchive] Required.
  /// [transitionToIa] Required.
  /// [transitionToPrimaryStorageClass] Required.
  GetFileSystemLifecyclePolicy({
    required this.transitionToArchive,
    required this.transitionToIa,
    required this.transitionToPrimaryStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transitionToArchive': transitionToArchive,
      'transitionToIa': transitionToIa,
      'transitionToPrimaryStorageClass': transitionToPrimaryStorageClass,
    };
  }

  factory GetFileSystemLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return GetFileSystemLifecyclePolicy(
      transitionToArchive: map['transitionToArchive'] as String,
      transitionToIa: map['transitionToIa'] as String,
      transitionToPrimaryStorageClass: map['transitionToPrimaryStorageClass'] as String,
    );
  }
}

