// ignore_for_file: unused_element, unnecessary_cast


/// Template artifact profile.
class ArmTemplateArtifactProfile {
  /// Template name.
  final String? templateName;
  /// Template version.
  final String? templateVersion;

  /// Creates a new [ArmTemplateArtifactProfile].
  /// [templateName] Template name.
  /// [templateVersion] Template version.
  ArmTemplateArtifactProfile({
    this.templateName,
    this.templateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateName': ?templateName,
      'templateVersion': ?templateVersion,
    };
  }

  factory ArmTemplateArtifactProfile.fromMap(Map<String, dynamic> map) {
    return ArmTemplateArtifactProfile(
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
      templateVersion: map['templateVersion'] == null ? null : map['templateVersion'] as String,
    );
  }
}

