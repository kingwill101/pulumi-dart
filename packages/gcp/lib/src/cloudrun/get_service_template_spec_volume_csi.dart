// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecVolumeCsi {
  /// Unique name representing the type of file system to be created. Cloud Run supports the following values:
  /// * gcsfuse.run.googleapis.com: Mount a Google Cloud Storage bucket using GCSFuse. This driver requires the
  /// run.googleapis.com/execution-environment annotation to be unset or set to "gen2"
  final String driver;

  /// If true, all mounts created from this volume will be read-only.
  final bool readOnly;

  /// Driver-specific attributes. The following options are supported for available drivers:
  /// * gcsfuse.run.googleapis.com
  /// * bucketName: The name of the Cloud Storage Bucket that backs this volume. The Cloud Run Service identity must have access to this bucket.
  final Map<String, String> volumeAttributes;

  /// Creates a new [GetServiceTemplateSpecVolumeCsi].
  /// [driver] Unique name representing the type of file system to be created. Cloud Run supports the following values:
  /// [readOnly] If true, all mounts created from this volume will be read-only.
  /// [volumeAttributes] Driver-specific attributes. The following options are supported for available drivers:
  GetServiceTemplateSpecVolumeCsi({
    required this.driver,
    required this.readOnly,
    required this.volumeAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['driver'] = driver;
    map['readOnly'] = readOnly;
    map['volumeAttributes'] = volumeAttributes;
    return map;
  }

  factory GetServiceTemplateSpecVolumeCsi.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolumeCsi(
      driver: map['driver'] as String,
      readOnly: map['readOnly'] as bool,
      volumeAttributes: (map['volumeAttributes'] as Map).cast<String, String>(),
    );
  }
}
