// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecVolumeSecretItem {
  /// The Cloud Secret Manager secret version.
  /// Can be 'latest' for the latest value or an integer for a specific version.
  final String key;

  /// Mode bits to use on this file, must be a value between 0000 and 0777. If
  /// not specified, the volume defaultMode will be used. This might be in
  /// conflict with other options that affect the file mode, like fsGroup, and
  /// the result can be other mode bits set.
  final int? mode;

  /// The relative path of the file to map the key to.
  /// May not be an absolute path.
  /// May not contain the path element '..'.
  /// May not start with the string '..'.
  final String path;

  /// Creates a new [ServiceTemplateSpecVolumeSecretItem].
  /// [key] The Cloud Secret Manager secret version.
  /// [mode] Mode bits to use on this file, must be a value between 0000 and 0777. If
  /// [path] The relative path of the file to map the key to.
  ServiceTemplateSpecVolumeSecretItem({
    required this.key,
    this.mode,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'mode': ?mode, 'path': path};
  }

  factory ServiceTemplateSpecVolumeSecretItem.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecVolumeSecretItem(
      key: map['key'] as String,
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] as String,
    );
  }
}
