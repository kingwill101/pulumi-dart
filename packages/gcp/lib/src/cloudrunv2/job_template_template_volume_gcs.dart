// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateTemplateVolumeGcs {
  /// Name of the cloud storage bucket to back the volume. The resource service account must have permission to access the bucket.
  final String bucket;
  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final List<String>? mountOptions;
  /// If true, mount this volume as read-only in all mounts. If false, mount this volume as read-write.
  final bool? readOnly;

  /// Creates a new [JobTemplateTemplateVolumeGcs].
  /// [bucket] Name of the cloud storage bucket to back the volume. The resource service account must have permission to access the bucket.
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount this volume as read-only in all mounts. If false, mount this volume as read-write.
  JobTemplateTemplateVolumeGcs({
    required this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'mountOptions': ?mountOptions,
      'readOnly': ?readOnly,
    };
  }

  factory JobTemplateTemplateVolumeGcs.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolumeGcs(
      bucket: map['bucket'] as String,
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

