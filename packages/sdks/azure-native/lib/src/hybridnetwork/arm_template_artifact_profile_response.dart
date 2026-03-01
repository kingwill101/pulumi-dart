// ignore_for_file: unused_element, unnecessary_cast


/// Template artifact profile.
class ArmTemplateArtifactProfileResponse {
  /// Template name.
  final String? templateName;
  /// Template version.
  final String? templateVersion;

  /// Creates a new [ArmTemplateArtifactProfileResponse].
  /// [templateName] Template name.
  /// [templateVersion] Template version.
  ArmTemplateArtifactProfileResponse({
    this.templateName,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateName': ?templateName,
      'templateVersion': ?templateVersion,
    };
  }

  factory ArmTemplateArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArmTemplateArtifactProfileResponse(
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
      templateVersion: map['templateVersion'] == null ? null : map['templateVersion'] as String,
    );
  }
}

