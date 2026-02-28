// ignore_for_file: unused_element, unnecessary_cast

class SharedflowMetaData {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  final String? createdAt;

  /// Time at which the API proxy was most recently modified, in milliseconds since epoch.
  final String? lastModifiedAt;

  /// The type of entity described
  final String? subType;

  /// Creates a new [SharedflowMetaData].
  /// [createdAt] Time at which the API proxy was created, in milliseconds since epoch.
  /// [lastModifiedAt] Time at which the API proxy was most recently modified, in milliseconds since epoch.
  /// [subType] The type of entity described
  SharedflowMetaData({
    this.createdAt,
    this.lastModifiedAt,
    this.subType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createdAtValue = createdAt;
    if (createdAtValue != null) {
      map['createdAt'] = createdAtValue;
    }
    final lastModifiedAtValue = lastModifiedAt;
    if (lastModifiedAtValue != null) {
      map['lastModifiedAt'] = lastModifiedAtValue;
    }
    final subTypeValue = subType;
    if (subTypeValue != null) {
      map['subType'] = subTypeValue;
    }
    return map;
  }

  factory SharedflowMetaData.fromMap(Map<String, dynamic> map) {
    return SharedflowMetaData(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      lastModifiedAt: map['lastModifiedAt'] == null
          ? null
          : map['lastModifiedAt'] as String,
      subType: map['subType'] == null ? null : map['subType'] as String,
    );
  }
}
