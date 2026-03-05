// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Available Solution template Version along with latest revision
class AvailableSolutionTemplateVersionResponse {
  /// Has this solution template version been configured
  final pulumi.Input<bool> isConfigured;
  /// Latest Configuration Revision
  final pulumi.Input<String> latestConfigRevision;
  /// Solution template Version
  final pulumi.Input<String> solutionTemplateVersion;

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
      isConfigured: pulumi.Input.fromValue(map['isConfigured'] as bool),
      latestConfigRevision: pulumi.Input.fromValue(map['latestConfigRevision'] as String),
      solutionTemplateVersion: pulumi.Input.fromValue(map['solutionTemplateVersion'] as String),
    );
  }
}

