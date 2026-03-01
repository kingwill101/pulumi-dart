// ignore_for_file: unused_element, unnecessary_cast


/// Metadata pertaining to creation and last modification of the resource.
class AccountResourceResponseSystemData {
  /// The timestamp of resource creation (UTC).
  final String? createdAt;
  /// The type of identity that created the resource.
  final String? createdByType;
  /// The timestamp of resource last modification (UTC)
  final String? lastModifiedAt;
  /// The type of identity that last modified the resource.
  final String? lastModifiedByType;

  /// Creates a new [AccountResourceResponseSystemData].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedAt] The timestamp of resource last modification (UTC)
  /// [lastModifiedByType] The type of identity that last modified the resource.
  AccountResourceResponseSystemData({
    this.createdAt,
    this.createdByType,
    this.lastModifiedAt,
    this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdByType': ?createdByType,
      'lastModifiedAt': ?lastModifiedAt,
      'lastModifiedByType': ?lastModifiedByType,
    };
  }

  factory AccountResourceResponseSystemData.fromMap(Map<String, dynamic> map) {
    return AccountResourceResponseSystemData(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      createdByType: map['createdByType'] == null ? null : map['createdByType'] as String,
      lastModifiedAt: map['lastModifiedAt'] == null ? null : map['lastModifiedAt'] as String,
      lastModifiedByType: map['lastModifiedByType'] == null ? null : map['lastModifiedByType'] as String,
    );
  }
}

