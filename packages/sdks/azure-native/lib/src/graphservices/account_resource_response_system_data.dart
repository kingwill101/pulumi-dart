// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata pertaining to creation and last modification of the resource.
class AccountResourceResponseSystemData {
  /// The timestamp of resource creation (UTC).
  final pulumi.Input<String>? createdAt;

  /// The type of identity that created the resource.
  final pulumi.Input<String>? createdByType;

  /// The timestamp of resource last modification (UTC)
  final pulumi.Input<String>? lastModifiedAt;

  /// The type of identity that last modified the resource.
  final pulumi.Input<String>? lastModifiedByType;

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
      createdAt: (() {
        final guardedValue = map['createdAt'];
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
      lastModifiedByType: (() {
        final guardedValue = map['lastModifiedByType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
