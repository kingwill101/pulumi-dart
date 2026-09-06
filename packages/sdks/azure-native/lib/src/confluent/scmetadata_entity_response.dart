// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the data record
class SCMetadataEntityResponse {
  /// Created Date Time
  final pulumi.Input<String?>? createdTimestamp;
  /// Deleted Date time
  final pulumi.Input<String?>? deletedTimestamp;
  /// Resource name of the record
  final pulumi.Input<String?>? resourceName;
  /// Self lookup url
  final pulumi.Input<String?>? self;
  /// Updated Date time
  final pulumi.Input<String?>? updatedTimestamp;

  /// Creates a new [SCMetadataEntityResponse].
  /// [createdTimestamp] Created Date Time
  /// [deletedTimestamp] Deleted Date time
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  /// [updatedTimestamp] Updated Date time
  const SCMetadataEntityResponse({
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

  factory SCMetadataEntityResponse.fromMap(Map<String, dynamic> map) {
    return SCMetadataEntityResponse(
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedTimestamp: (() { final guardedValue = map['deletedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedTimestamp: (() { final guardedValue = map['updatedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
