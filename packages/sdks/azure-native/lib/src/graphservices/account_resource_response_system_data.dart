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
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      createdByType: map['createdByType'] == null ? null : (map['createdByType']! as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt']! as String).input(),
      lastModifiedByType: map['lastModifiedByType'] == null ? null : (map['lastModifiedByType']! as String).input(),
    );
  }
}

