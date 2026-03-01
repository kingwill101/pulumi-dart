// ignore_for_file: unused_element, unnecessary_cast


class SystemDataResponse {
  final String? createdAt;
  final String? createdBy;
  final String? createdByType;
  final String? lastModifiedAt;
  final String? lastModifiedBy;
  final String? lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [createdByType] Optional.
  /// [lastModifiedAt] Optional.
  /// [lastModifiedBy] Optional.
  /// [lastModifiedByType] Optional.
  SystemDataResponse({
    this.createdAt,
    this.createdBy,
    this.createdByType,
    this.lastModifiedAt,
    this.lastModifiedBy,
    this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'createdByType': ?createdByType,
      'lastModifiedAt': ?lastModifiedAt,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedByType': ?lastModifiedByType,
    };
  }

  factory SystemDataResponse.fromMap(Map<String, dynamic> map) {
    return SystemDataResponse(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      createdByType: map['createdByType'] == null ? null : map['createdByType'] as String,
      lastModifiedAt: map['lastModifiedAt'] == null ? null : map['lastModifiedAt'] as String,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy'] as String,
      lastModifiedByType: map['lastModifiedByType'] == null ? null : map['lastModifiedByType'] as String,
    );
  }
}

