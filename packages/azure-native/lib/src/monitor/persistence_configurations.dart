// ignore_for_file: unused_element, unnecessary_cast


/// Persistence options to all pipelines in the instance.
class PersistenceConfigurations {
  /// The name of the mounted persistent volume.
  final String persistentVolumeName;

  /// Creates a new [PersistenceConfigurations].
  /// [persistentVolumeName] The name of the mounted persistent volume.
  PersistenceConfigurations({
    required this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeName': persistentVolumeName,
    };
  }

  factory PersistenceConfigurations.fromMap(Map<String, dynamic> map) {
    return PersistenceConfigurations(
      persistentVolumeName: map['persistentVolumeName'] as String,
    );
  }
}

