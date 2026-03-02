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
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      createdByType: map['createdByType'] == null ? null : (map['createdByType'] as String).input(),
      lastModifiedAt: map['lastModifiedAt'] == null ? null : (map['lastModifiedAt'] as String).input(),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : (map['lastModifiedBy'] as String).input(),
      lastModifiedByType: map['lastModifiedByType'] == null ? null : (map['lastModifiedByType'] as String).input(),
    );
  }
}

