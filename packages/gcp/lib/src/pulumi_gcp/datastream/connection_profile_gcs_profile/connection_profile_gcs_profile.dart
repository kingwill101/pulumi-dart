// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileGcsProfile {
  /// The Cloud Storage bucket name.
  final String bucket;

  /// The root path inside the Cloud Storage bucket.
  final String? rootPath;

  ConnectionProfileGcsProfile({
    required this.bucket,
    this.rootPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final rootPathValue = rootPath;
    if (rootPathValue != null) {
      map['rootPath'] = rootPathValue;
    }
    return map;
  }

  factory ConnectionProfileGcsProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileGcsProfile(
      bucket: map['bucket'] as String,
      rootPath: map['rootPath'] == null ? null : map['rootPath'] as String,
    );
  }
}
