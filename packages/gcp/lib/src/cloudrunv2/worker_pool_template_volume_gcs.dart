// ignore_for_file: unused_element, unnecessary_cast


class WorkerPoolTemplateVolumeGcs {
  /// GCS Bucket name
  final String bucket;
  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final List<String>? mountOptions;
  /// If true, mount the GCS bucket as read-only
  final bool? readOnly;

  /// Creates a new [WorkerPoolTemplateVolumeGcs].
  /// [bucket] GCS Bucket name
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount the GCS bucket as read-only
  WorkerPoolTemplateVolumeGcs({
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

  factory WorkerPoolTemplateVolumeGcs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVolumeGcs(
      bucket: map['bucket'] as String,
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

