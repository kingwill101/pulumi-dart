// ignore_for_file: unused_element, unnecessary_cast


/// Available Solution template Version along with latest revision
class AvailableSolutionTemplateVersionResponse {
  /// Has this solution template version been configured
  final bool isConfigured;
  /// Latest Configuration Revision
  final String latestConfigRevision;
  /// Solution template Version
  final String solutionTemplateVersion;

  /// Creates a new [AvailableSolutionTemplateVersionResponse].
  /// [isConfigured] Has this solution template version been configured
  /// [latestConfigRevision] Latest Configuration Revision
  /// [solutionTemplateVersion] Solution template Version
  AvailableSolutionTemplateVersionResponse({
    required this.isConfigured,
    required this.latestConfigRevision,
    required this.solutionTemplateVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isConfigured': isConfigured,
      'latestConfigRevision': latestConfigRevision,
      'solutionTemplateVersion': solutionTemplateVersion,
    };
  }

  factory AvailableSolutionTemplateVersionResponse.fromMap(Map<String, dynamic> map) {
    return AvailableSolutionTemplateVersionResponse(
      isConfigured: map['isConfigured'] as bool,
      latestConfigRevision: map['latestConfigRevision'] as String,
      solutionTemplateVersion: map['solutionTemplateVersion'] as String,
    );
  }
}

