// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';

/// The integration service environment managed api deployment parameters.
class IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse {
  /// The integration service environment managed api content link for deployment.
  final pulumi.Input<ContentLinkResponse>? contentLinkDefinition;

  /// Creates a new [IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse].
  /// [contentLinkDefinition] The integration service environment managed api content link for deployment.
  const IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse({
    this.contentLinkDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentLinkDefinition': ?pulumi.Input.mapOptionalInputValue<ContentLinkResponse, Map<String, dynamic>>(contentLinkDefinition, (value) => value.toMap()),
    };
  }

  factory IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse(
      contentLinkDefinition: (() { final guardedValue = map['contentLinkDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
