// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateVolumeSecretItem {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  final int? mode;

  /// The relative path of the secret in the container.
  final String path;

  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  final String version;

  JobTemplateTemplateVolumeSecretItem({
    this.mode,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    map['path'] = path;
    map['version'] = version;
    return map;
  }

  factory JobTemplateTemplateVolumeSecretItem.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateVolumeSecretItem(
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] as String,
      version: map['version'] as String,
    );
  }
}
