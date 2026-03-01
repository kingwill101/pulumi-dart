// ignore_for_file: unused_element, unnecessary_cast


/// Persistence options to all pipelines in the instance.
class PersistenceConfigurationsResponse {
  /// The name of the mounted persistent volume.
  final String persistentVolumeName;

  /// Creates a new [PersistenceConfigurationsResponse].
  /// [persistentVolumeName] The name of the mounted persistent volume.
  PersistenceConfigurationsResponse({
    required this.persistentVolumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentVolumeName': persistentVolumeName,
    };
  }

  factory PersistenceConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return PersistenceConfigurationsResponse(
      persistentVolumeName: map['persistentVolumeName'] as String,
    );
  }
}

