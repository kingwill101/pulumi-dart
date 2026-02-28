// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateVolumeGc {
  /// GCS Bucket name
  final String bucket;

  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final List<String> mountOptions;

  /// If true, mount the GCS bucket as read-only
  final bool readOnly;

  /// Creates a new [GetServiceTemplateVolumeGc].
  /// [bucket] GCS Bucket name
  /// [mountOptions] A list of flags to pass to the gcsfuse command for configuring this volume.
  /// [readOnly] If true, mount the GCS bucket as read-only
  GetServiceTemplateVolumeGc({
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

  factory GetServiceTemplateVolumeGc.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeGc(
      bucket: map['bucket'] as String,
      mountOptions: (map['mountOptions'] as List).cast<String>(),
      readOnly: map['readOnly'] as bool,
    );
  }
}
