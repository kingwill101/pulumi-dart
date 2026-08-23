// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProtectedItemModelResponseSystemData {
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

  /// Creates a new [ProtectedItemModelResponseSystemData].
  /// [createdAt] Gets or sets the timestamp of resource creation (UTC).
  /// [createdBy] Gets or sets identity that created the resource.
  /// [createdByType] Gets or sets the type of identity that created the resource: user, application,
  /// [lastModifiedAt] Gets or sets the timestamp of resource last modification (UTC).
  /// [lastModifiedBy] Gets or sets the identity that last modified the resource.
  /// [lastModifiedByType] Gets or sets the type of identity that last modified the resource: user, application,
  const ProtectedItemModelResponseSystemData({
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

  factory ProtectedItemModelResponseSystemData.fromMap(Map<String, dynamic> map) {
    return ProtectedItemModelResponseSystemData(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdByType: (() { final guardedValue = map['createdByType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedByType: (() { final guardedValue = map['lastModifiedByType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
