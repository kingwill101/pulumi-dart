// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ssis environment reference.
class SsisEnvironmentReferenceResponse {
  /// Environment folder name.
  final pulumi.Input<String>? environmentFolderName;
  /// Environment name.
  final pulumi.Input<String>? environmentName;
  /// Environment reference id.
  final pulumi.Input<double>? id;
  /// Reference type
  final pulumi.Input<String>? referenceType;

  /// Creates a new [SsisEnvironmentReferenceResponse].
  /// [environmentFolderName] Environment folder name.
  /// [environmentName] Environment name.
  /// [id] Environment reference id.
  /// [referenceType] Reference type
  SsisEnvironmentReferenceResponse({
    this.environmentFolderName,
    this.environmentName,
    this.id,
    this.referenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentFolderName': ?environmentFolderName,
      'environmentName': ?environmentName,
      'id': ?id,
      'referenceType': ?referenceType,
    };
  }

  factory SsisEnvironmentReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SsisEnvironmentReferenceResponse(
      environmentFolderName: map['environmentFolderName'] == null ? null : (map['environmentFolderName'] as String).input(),
      environmentName: map['environmentName'] == null ? null : (map['environmentName'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as double).input(),
      referenceType: map['referenceType'] == null ? null : (map['referenceType'] as String).input(),
    );
  }
}

