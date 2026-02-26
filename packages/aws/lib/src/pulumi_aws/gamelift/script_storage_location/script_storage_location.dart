// ignore_for_file: unused_element, unnecessary_cast

class ScriptStorageLocation {
  /// Name of your S3 bucket.
  final String bucket;

  /// Name of the zip file containing your script files.
  final String key;

  /// A specific version of the file. If not set, the latest version of the file is retrieved.
  final String? objectVersion;

  /// ARN of the access role that allows Amazon GameLift to access your S3 bucket.
  final String roleArn;

  ScriptStorageLocation({
    required this.bucket,
    required this.key,
    this.objectVersion,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    final objectVersionValue = objectVersion;
    if (objectVersionValue != null) {
      map['objectVersion'] = objectVersionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory ScriptStorageLocation.fromMap(Map<String, dynamic> map) {
    return ScriptStorageLocation(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
      objectVersion:
          map['objectVersion'] == null ? null : map['objectVersion'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
