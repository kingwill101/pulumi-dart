// ignore_for_file: unused_element, unnecessary_cast


class SpacesKeyGrant {
  /// Name of the bucket associated with this grant. In case of a `fullaccess` permission, this value should be an empty string.
  final String bucket;
  /// Permission associated with this grant. Values can be `read`, `readwrite`, `fullaccess`.
  final String permission;

  /// Creates a new [SpacesKeyGrant].
  /// [bucket] Name of the bucket associated with this grant. In case of a `fullaccess` permission, this value should be an empty string.
  /// [permission] Permission associated with this grant. Values can be `read`, `readwrite`, `fullaccess`.
  SpacesKeyGrant({
    required this.bucket,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'permission': permission,
    };
  }

  factory SpacesKeyGrant.fromMap(Map<String, dynamic> map) {
    return SpacesKeyGrant(
      bucket: map['bucket'] as String,
      permission: map['permission'] as String,
    );
  }
}

