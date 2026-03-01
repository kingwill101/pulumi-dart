// ignore_for_file: unused_element, unnecessary_cast


class WorkerPoolTemplateVolumeSecretItem {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  final int? mode;
  /// The relative path of the secret in the container.
  final String path;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  final String? version;

  /// Creates a new [WorkerPoolTemplateVolumeSecretItem].
  /// [mode] Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  /// [path] The relative path of the secret in the container.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  WorkerPoolTemplateVolumeSecretItem({
    this.mode,
    required this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': path,
      'version': ?version,
    };
  }

  factory WorkerPoolTemplateVolumeSecretItem.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVolumeSecretItem(
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

