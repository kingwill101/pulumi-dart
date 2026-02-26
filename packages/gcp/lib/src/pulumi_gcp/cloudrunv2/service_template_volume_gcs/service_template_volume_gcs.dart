// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateVolumeGcs {
  /// GCS Bucket name
  final String bucket;

  /// A list of flags to pass to the gcsfuse command for configuring this volume.
  /// Flags should be passed without leading dashes.
  final List<String>? mountOptions;

  /// If true, mount the GCS bucket as read-only
  final bool? readOnly;

  ServiceTemplateVolumeGcs({
    required this.bucket,
    this.mountOptions,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final mountOptionsValue = mountOptions;
    if (mountOptionsValue != null) {
      map['mountOptions'] = mountOptionsValue;
    }
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    return map;
  }

  factory ServiceTemplateVolumeGcs.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVolumeGcs(
      bucket: map['bucket'] as String,
      mountOptions: map['mountOptions'] == null
          ? null
          : (map['mountOptions'] as List).cast<String>(),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}
