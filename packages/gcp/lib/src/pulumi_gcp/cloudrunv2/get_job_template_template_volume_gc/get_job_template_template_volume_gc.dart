// ignore_for_file: unused_element, unnecessary_cast

class GetJobTemplateTemplateVolumeGc {
  /// Name of the cloud storage bucket to back the volume. The resource service account must have permission to access the bucket.
  final String bucket;

  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final List<String> mountOptions;

  /// If true, mount this volume as read-only in all mounts. If false, mount this volume as read-write.
  final bool readOnly;

  GetJobTemplateTemplateVolumeGc({
    required this.bucket,
    required this.mountOptions,
    required this.readOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['mountOptions'] = mountOptions;
    map['readOnly'] = readOnly;
    return map;
  }

  factory GetJobTemplateTemplateVolumeGc.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolumeGc(
      bucket: map['bucket'] as String,
      mountOptions: (map['mountOptions'] as List).cast<String>(),
      readOnly: map['readOnly'] as bool,
    );
  }
}
