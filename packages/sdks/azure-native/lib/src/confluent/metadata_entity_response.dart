// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the data record
class MetadataEntityResponse {
  /// Created Date Time
  final pulumi.Input<String>? createdAt;
  /// Deleted Date time
  final pulumi.Input<String>? deletedAt;
  /// Resource name of the record
  final pulumi.Input<String>? resourceName;
  /// Self lookup url
  final pulumi.Input<String>? self;
  /// Updated Date time
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [MetadataEntityResponse].
  /// [createdAt] Created Date Time
  /// [deletedAt] Deleted Date time
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  /// [updatedAt] Updated Date time
  MetadataEntityResponse({
    this.createdAt,
    this.deletedAt,
    this.resourceName,
    this.self,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'resourceName': ?resourceName,
      'self': ?self,
      'updatedAt': ?updatedAt,
    };
  }

  factory MetadataEntityResponse.fromMap(Map<String, dynamic> map) {
    return MetadataEntityResponse(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      deletedAt: map['deletedAt'] == null ? null : (map['deletedAt']! as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      self: map['self'] == null ? null : (map['self']! as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt']! as String).input(),
    );
  }
}

