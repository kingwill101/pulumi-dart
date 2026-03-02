// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the data record
class SCMetadataEntity {
  /// Created Date Time
  final pulumi.Input<String>? createdTimestamp;
  /// Deleted Date time
  final pulumi.Input<String>? deletedTimestamp;
  /// Resource name of the record
  final pulumi.Input<String>? resourceName;
  /// Self lookup url
  final pulumi.Input<String>? self;
  /// Updated Date time
  final pulumi.Input<String>? updatedTimestamp;

  /// Creates a new [SCMetadataEntity].
  /// [createdTimestamp] Created Date Time
  /// [deletedTimestamp] Deleted Date time
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  /// [updatedTimestamp] Updated Date time
  SCMetadataEntity({
    this.createdTimestamp,
    this.deletedTimestamp,
    this.resourceName,
    this.self,
    this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTimestamp': ?createdTimestamp,
      'deletedTimestamp': ?deletedTimestamp,
      'resourceName': ?resourceName,
      'self': ?self,
      'updatedTimestamp': ?updatedTimestamp,
    };
  }

  factory SCMetadataEntity.fromMap(Map<String, dynamic> map) {
    return SCMetadataEntity(
      createdTimestamp: map['createdTimestamp'] == null ? null : (map['createdTimestamp'] as String).input(),
      deletedTimestamp: map['deletedTimestamp'] == null ? null : (map['deletedTimestamp'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      self: map['self'] == null ? null : (map['self'] as String).input(),
      updatedTimestamp: map['updatedTimestamp'] == null ? null : (map['updatedTimestamp'] as String).input(),
    );
  }
}

