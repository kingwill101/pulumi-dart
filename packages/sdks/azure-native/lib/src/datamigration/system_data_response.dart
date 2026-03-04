// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemDataResponse {
  final pulumi.Input<String>? createdAt;
  final pulumi.Input<String>? createdBy;
  final pulumi.Input<String>? createdByType;
  final pulumi.Input<String>? lastModifiedAt;
  final pulumi.Input<String>? lastModifiedBy;
  final pulumi.Input<String>? lastModifiedByType;

  /// Creates a new [SystemDataResponse].
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [createdByType] Optional.
  /// [lastModifiedAt] Optional.
  /// [lastModifiedBy] Optional.
  /// [lastModifiedByType] Optional.
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
