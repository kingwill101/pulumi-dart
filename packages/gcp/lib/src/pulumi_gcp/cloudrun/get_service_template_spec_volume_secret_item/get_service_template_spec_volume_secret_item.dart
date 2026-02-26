// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecVolumeSecretItem {
  /// The Cloud Secret Manager secret version.
  /// Can be 'latest' for the latest value or an integer for a specific version.
  final String key;

  /// Mode bits to use on this file, must be a value between 0000 and 0777. If
  /// not specified, the volume defaultMode will be used. This might be in
  /// conflict with other options that affect the file mode, like fsGroup, and
  /// the result can be other mode bits set.
  final int mode;

  /// The relative path of the file to map the key to.
  /// May not be an absolute path.
  /// May not contain the path element '..'.
  /// May not start with the string '..'.
  final String path;

  GetServiceTemplateSpecVolumeSecretItem({
    required this.key,
    required this.mode,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['mode'] = mode;
    map['path'] = path;
    return map;
  }

  factory GetServiceTemplateSpecVolumeSecretItem.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecVolumeSecretItem(
      key: map['key'] as String,
      mode: map['mode'] as int,
      path: map['path'] as String,
    );
  }
}
