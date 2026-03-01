// ignore_for_file: unused_element, unnecessary_cast


class ReplicationExtensionModelResponseSystemData {
  /// Gets or sets the timestamp of resource creation (UTC).
  final String? createdAt;
  /// Gets or sets identity that created the resource.
  final String? createdBy;
  /// Gets or sets the type of identity that created the resource: user, application,
  /// managedIdentity.
  final String? createdByType;
  /// Gets or sets the timestamp of resource last modification (UTC).
  final String? lastModifiedAt;
  /// Gets or sets the identity that last modified the resource.
  final String? lastModifiedBy;
  /// Gets or sets the type of identity that last modified the resource: user, application,
  /// managedIdentity.
  final String? lastModifiedByType;

  /// Creates a new [ReplicationExtensionModelResponseSystemData].
  /// [createdAt] Gets or sets the timestamp of resource creation (UTC).
  /// [createdBy] Gets or sets identity that created the resource.
  /// [createdByType] Gets or sets the type of identity that created the resource: user, application,
  /// [lastModifiedAt] Gets or sets the timestamp of resource last modification (UTC).
  /// [lastModifiedBy] Gets or sets the identity that last modified the resource.
  /// [lastModifiedByType] Gets or sets the type of identity that last modified the resource: user, application,
  ReplicationExtensionModelResponseSystemData({
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

  factory ReplicationExtensionModelResponseSystemData.fromMap(Map<String, dynamic> map) {
    return ReplicationExtensionModelResponseSystemData(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      createdByType: map['createdByType'] == null ? null : map['createdByType'] as String,
      lastModifiedAt: map['lastModifiedAt'] == null ? null : map['lastModifiedAt'] as String,
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy'] as String,
      lastModifiedByType: map['lastModifiedByType'] == null ? null : map['lastModifiedByType'] as String,
    );
  }
}

