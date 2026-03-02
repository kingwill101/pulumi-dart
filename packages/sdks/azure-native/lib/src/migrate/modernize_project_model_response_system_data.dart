// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModernizeProjectModelResponseSystemData {
  /// Gets or sets the timestamp of resource creation (UTC).
  final pulumi.Input<String>? createdAt;
  /// Gets or sets identity that created the resource.
  final pulumi.Input<String>? createdBy;
  /// Gets or sets the type of identity that created the resource: user, application,
  /// managedIdentity.
  final pulumi.Input<String>? createdByType;
  /// Gets or sets the timestamp of resource last modification (UTC).
  final pulumi.Input<String>? lastModifiedAt;
  /// Gets or sets the identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedBy;
  /// Gets or sets the type of identity that last modified the resource: user, application,
  /// managedIdentity.
  final pulumi.Input<String>? lastModifiedByType;

  /// Creates a new [ModernizeProjectModelResponseSystemData].
  /// [createdAt] Gets or sets the timestamp of resource creation (UTC).
  /// [createdBy] Gets or sets identity that created the resource.
  /// [createdByType] Gets or sets the type of identity that created the resource: user, application,
  /// [lastModifiedAt] Gets or sets the timestamp of resource last modification (UTC).
  /// [lastModifiedBy] Gets or sets the identity that last modified the resource.
  /// [lastModifiedByType] Gets or sets the type of identity that last modified the resource: user, application,
  ModernizeProjectModelResponseSystemData({
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

  factory ModernizeProjectModelResponseSystemData.fromMap(Map<String, dynamic> map) {
    return ModernizeProjectModelResponseSystemData(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      createdByType: map['createdByType'] == null ? null : (map['createdByType'] as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt'] as String).input(),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : (map['lastModifiedBy'] as String).input(),
      lastModifiedByType: map['lastModifiedByType'] == null ? null : (map['lastModifiedByType'] as String).input(),
    );
  }
}

