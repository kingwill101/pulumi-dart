// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateVolumeSecretItem {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  final int mode;
  /// The relative path of the secret in the container.
  final String path;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  final String version;

  /// Creates a new [GetServiceTemplateVolumeSecretItem].
  /// [mode] Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  /// [path] The relative path of the secret in the container.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  GetServiceTemplateVolumeSecretItem({
    required this.mode,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'path': path,
      'version': version,
    };
  }

  factory GetServiceTemplateVolumeSecretItem.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeSecretItem(
      mode: map['mode'] as int,
      path: map['path'] as String,
      version: map['version'] as String,
    );
  }
}

