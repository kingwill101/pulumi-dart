// ignore_for_file: unused_element, unnecessary_cast


/// Ssis environment reference.
class SsisEnvironmentReferenceResponse {
  /// Environment folder name.
  final String? environmentFolderName;
  /// Environment name.
  final String? environmentName;
  /// Environment reference id.
  final double? id;
  /// Reference type
  final String? referenceType;

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
      environmentFolderName: map['environmentFolderName'] == null ? null : map['environmentFolderName'] as String,
      environmentName: map['environmentName'] == null ? null : map['environmentName'] as String,
      id: map['id'] == null ? null : map['id'] as double,
      referenceType: map['referenceType'] == null ? null : map['referenceType'] as String,
    );
  }
}

