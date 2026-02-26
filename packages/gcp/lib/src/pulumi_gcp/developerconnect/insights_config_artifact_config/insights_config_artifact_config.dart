// ignore_for_file: unused_element, unnecessary_cast

import '../insights_config_artifact_config_google_artifact_analysis/insights_config_artifact_config_google_artifact_analysis.dart';
import '../insights_config_artifact_config_google_artifact_registry/insights_config_artifact_config_google_artifact_registry.dart';

class InsightsConfigArtifactConfig {
  /// Google Artifact Analysis configurations.
  /// Structure is documented below.
  final InsightsConfigArtifactConfigGoogleArtifactAnalysis?
      googleArtifactAnalysis;

  /// Google Artifact Registry configurations.
  /// Structure is documented below.
  final InsightsConfigArtifactConfigGoogleArtifactRegistry?
      googleArtifactRegistry;

  /// The URI of the artifact that is deployed.
  /// e.g. `us-docker.pkg.dev/my-project/my-repo/image`.
  /// The URI does not include the tag / digest because it captures a lineage of
  /// artifacts.
  final String? uri;

  InsightsConfigArtifactConfig({
    this.googleArtifactAnalysis,
    this.googleArtifactRegistry,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final googleArtifactAnalysisValue = googleArtifactAnalysis;
    if (googleArtifactAnalysisValue != null) {
      map['googleArtifactAnalysis'] = googleArtifactAnalysisValue.toMap();
    }
    final googleArtifactRegistryValue = googleArtifactRegistry;
    if (googleArtifactRegistryValue != null) {
      map['googleArtifactRegistry'] = googleArtifactRegistryValue.toMap();
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory InsightsConfigArtifactConfig.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArtifactConfig(
      googleArtifactAnalysis: map['googleArtifactAnalysis'] == null
          ? null
          : InsightsConfigArtifactConfigGoogleArtifactAnalysis.fromMap(
              (map['googleArtifactAnalysis'] as Map).cast<String, dynamic>()),
      googleArtifactRegistry: map['googleArtifactRegistry'] == null
          ? null
          : InsightsConfigArtifactConfigGoogleArtifactRegistry.fromMap(
              (map['googleArtifactRegistry'] as Map).cast<String, dynamic>()),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
