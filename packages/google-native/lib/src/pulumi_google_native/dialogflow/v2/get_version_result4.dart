// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVersion.
class GetVersionResult4 {
  /// The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  final String createTime;

  /// Optional. The developer-provided description of this version.
  final String description;

  /// The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final String name;

  /// The status of this version. This field is read-only and cannot be set by create and update methods.
  final String status;

  /// The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  final int versionNumber;

  GetVersionResult4({
    required this.createTime,
    required this.description,
    required this.name,
    required this.status,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['status'] = status;
    map['versionNumber'] = versionNumber;
    return map;
  }

  factory GetVersionResult4.fromMap(Map<String, dynamic> map) {
    return GetVersionResult4(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      versionNumber: map['versionNumber'] as int,
    );
  }
}
