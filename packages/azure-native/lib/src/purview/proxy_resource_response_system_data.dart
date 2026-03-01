// ignore_for_file: unused_element, unnecessary_cast


/// Metadata pertaining to creation and last modification of the resource.
class ProxyResourceResponseSystemData {
  /// The timestamp of resource creation (UTC).
  final String createdAt;
  /// The identity that created the resource.
  final String createdBy;
  /// The type of identity that created the resource.
  final String createdByType;
  /// The timestamp of the last modification the resource (UTC).
  final String lastModifiedAt;
  /// The identity that last modified the resource.
  final String lastModifiedBy;
  /// The type of identity that last modified the resource.
  final String lastModifiedByType;

  /// Creates a new [ProxyResourceResponseSystemData].
  /// [createdAt] The timestamp of resource creation (UTC).
  /// [createdBy] The identity that created the resource.
  /// [createdByType] The type of identity that created the resource.
  /// [lastModifiedAt] The timestamp of the last modification the resource (UTC).
  /// [lastModifiedBy] The identity that last modified the resource.
  /// [lastModifiedByType] The type of identity that last modified the resource.
  ProxyResourceResponseSystemData({
    required this.createdAt,
    required this.createdBy,
    required this.createdByType,
    required this.lastModifiedAt,
    required this.lastModifiedBy,
    required this.lastModifiedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'createdBy': createdBy,
      'createdByType': createdByType,
      'lastModifiedAt': lastModifiedAt,
      'lastModifiedBy': lastModifiedBy,
      'lastModifiedByType': lastModifiedByType,
    };
  }

  factory ProxyResourceResponseSystemData.fromMap(Map<String, dynamic> map) {
    return ProxyResourceResponseSystemData(
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      createdByType: map['createdByType'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      lastModifiedByType: map['lastModifiedByType'] as String,
    );
  }
}

