// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata pertaining to creation and last modification of the key vault resource.
class SystemDataResponse {
  /// The timestamp of the key vault resource creation (UTC).
  final pulumi.Input<String>? createdAt;
  /// The identity that created the key vault resource.
  final pulumi.Input<String>? createdBy;
  /// The type of identity that created the key vault resource.
  final pulumi.Input<String>? createdByType;
  /// The timestamp of the key vault resource last modification (UTC).
  final pulumi.Input<String>? lastModifiedAt;
  /// The identity that last modified the key vault resource.
  final pulumi.Input<String>? lastModifiedBy;
  /// The type of identity that last modified the key vault resource.
  final pulumi.Input<String>? lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] The timestamp of the key vault resource creation (UTC).
  /// [createdBy] The identity that created the key vault resource.
  /// [createdByType] The type of identity that created the key vault resource.
  /// [lastModifiedAt] The timestamp of the key vault resource last modification (UTC).
  /// [lastModifiedBy] The identity that last modified the key vault resource.
  /// [lastModifiedByType] The type of identity that last modified the key vault resource.
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
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      createdByType: map['createdByType'] == null ? null : (map['createdByType'] as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt'] as String).input(),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : (map['lastModifiedBy'] as String).input(),
      lastModifiedByType: map['lastModifiedByType'] == null ? null : (map['lastModifiedByType'] as String).input(),
    );
  }
}

