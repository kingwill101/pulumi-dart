// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';

/// The integration service environment managed api deployment parameters.
class IntegrationServiceEnvironmentManagedApiDeploymentParameters {
  /// The integration service environment managed api content link for deployment.
  final pulumi.Input<ContentLink>? contentLinkDefinition;

  /// Creates a new [IntegrationServiceEnvironmentManagedApiDeploymentParameters].
  /// [contentLinkDefinition] The integration service environment managed api content link for deployment.
  IntegrationServiceEnvironmentManagedApiDeploymentParameters({
    this.contentLinkDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentLinkDefinition': ?pulumi.Input.mapOptionalInputValue<ContentLink, Map<String, dynamic>>(contentLinkDefinition, (value) => value.toMap()),
    };
  }

  factory IntegrationServiceEnvironmentManagedApiDeploymentParameters.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentManagedApiDeploymentParameters(
      contentLinkDefinition: (() { final guardedValue = map['contentLinkDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

