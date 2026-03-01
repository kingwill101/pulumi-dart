// ignore_for_file: unused_element, unnecessary_cast

import 'content_link.dart';

/// The integration service environment managed api deployment parameters.
class IntegrationServiceEnvironmentManagedApiDeploymentParameters {
  /// The integration service environment managed api content link for deployment.
  final ContentLink? contentLinkDefinition;

  /// Creates a new [IntegrationServiceEnvironmentManagedApiDeploymentParameters].
  /// [contentLinkDefinition] The integration service environment managed api content link for deployment.
  IntegrationServiceEnvironmentManagedApiDeploymentParameters({
    this.contentLinkDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentLinkDefinition': ?contentLinkDefinition == null ? null : contentLinkDefinition!.toMap(),
    };
  }

  factory IntegrationServiceEnvironmentManagedApiDeploymentParameters.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentManagedApiDeploymentParameters(
      contentLinkDefinition: map['contentLinkDefinition'] == null ? null : ContentLink.fromMap((map['contentLinkDefinition'] as Map).cast<String, dynamic>()),
    );
  }
}

