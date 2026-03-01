// ignore_for_file: unused_element, unnecessary_cast


/// Metadata pertaining to creation and last modification of the resource.
class TrackedResourceResponseSystemData {
  /// The timestamp of resource creation (UTC).
  final String? createdAt;
  /// The identity that created the resource.
  final String? createdBy;
  /// The type of identity that created the resource.
  final String? createdByType;
  /// The identity that last modified the resource.
  final String? lastModifiedBy;
  /// The type of identity that last modified the resource.
  final String? lastModifiedByType;

  /// Creates a new [TrackedResourceResponseSystemData].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedBy] The identity that last modified the resource.
  /// [lastModifiedByType] The type of identity that last modified the resource.
  TrackedResourceResponseSystemData({
    this.createdAt,
    this.createdBy,
    this.createdByType,
    this.lastModifiedBy,
    this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'createdByType': ?createdByType,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedByType': ?lastModifiedByType,
    };
  }

  factory TrackedResourceResponseSystemData.fromMap(Map<String, dynamic> map) {
    return TrackedResourceResponseSystemData(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      createdByType: map['createdByType'] == null ? null : map['createdByType'] as String,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy'] as String,
      lastModifiedByType: map['lastModifiedByType'] == null ? null : map['lastModifiedByType'] as String,
    );
  }
}

