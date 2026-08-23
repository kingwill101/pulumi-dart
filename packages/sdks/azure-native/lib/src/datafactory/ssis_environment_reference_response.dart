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
  const SsisEnvironmentReferenceResponse({
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
      environmentFolderName: (() { final guardedValue = map['environmentFolderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      referenceType: (() { final guardedValue = map['referenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
