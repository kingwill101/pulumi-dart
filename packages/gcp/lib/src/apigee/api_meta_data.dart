// ignore_for_file: unused_element, unnecessary_cast

class ApiMetaData {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  final String? createdAt;

  /// Time at which the API proxy was most recently modified, in milliseconds since epoch.
  final String? lastModifiedAt;

  /// The type of entity described
  final String? subType;

  /// Creates a new [ApiMetaData].
  /// [createdAt] Time at which the API proxy was created, in milliseconds since epoch.
  /// [lastModifiedAt] Time at which the API proxy was most recently modified, in milliseconds since epoch.
  /// [subType] The type of entity described
  ApiMetaData({this.createdAt, this.lastModifiedAt, this.subType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'lastModifiedAt': ?lastModifiedAt,
      'subType': ?subType,
    };
  }

  factory ApiMetaData.fromMap(Map<String, dynamic> map) {
    return ApiMetaData(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      lastModifiedAt: map['lastModifiedAt'] == null
          ? null
          : map['lastModifiedAt'] as String,
      subType: map['subType'] == null ? null : map['subType'] as String,
    );
  }
}
