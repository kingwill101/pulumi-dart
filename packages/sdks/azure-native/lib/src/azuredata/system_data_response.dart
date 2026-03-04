// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read only system data
class SystemDataResponse {
  /// The timestamp of resource creation (UTC)
  final pulumi.Input<String>? createdAt;

  /// An identifier for the identity that created the resource
  final pulumi.Input<String>? createdBy;

  /// The type of identity that created the resource
  final pulumi.Input<String>? createdByType;

  /// The timestamp of resource last modification (UTC)
  final pulumi.Input<String>? lastModifiedAt;

  /// An identifier for the identity that last modified the resource
  final pulumi.Input<String>? lastModifiedBy;

  /// The type of identity that last modified the resource
  final pulumi.Input<String>? lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] The timestamp of resource creation (UTC)
  /// [createdBy] An identifier for the identity that created the resource
  /// [createdByType] The type of identity that created the resource
  /// [lastModifiedAt] The timestamp of resource last modification (UTC)
  /// [lastModifiedBy] An identifier for the identity that last modified the resource
  /// [lastModifiedByType] The type of identity that last modified the resource
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
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdByType: (() {
        final guardedValue = map['createdByType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedAt: (() {
        final guardedValue = map['lastModifiedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedBy: (() {
        final guardedValue = map['lastModifiedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModifiedByType: (() {
        final guardedValue = map['lastModifiedByType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
