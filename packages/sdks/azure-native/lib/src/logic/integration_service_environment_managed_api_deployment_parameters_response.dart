// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';

/// The integration service environment managed api deployment parameters.
class IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse {
  /// The integration service environment managed api content link for deployment.
  final pulumi.Input<ContentLinkResponse>? contentLinkDefinition;

  /// Creates a new [IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse].
  /// [contentLinkDefinition] The integration service environment managed api content link for deployment.
  IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse({
    this.contentLinkDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentLinkDefinition': ?pulumi.Input.mapOptionalInputValue<ContentLinkResponse, Map<String, dynamic>>(contentLinkDefinition, (value) => value.toMap()),
    };
  }

  factory IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentManagedApiDeploymentParametersResponse(
      contentLinkDefinition: map['contentLinkDefinition'] == null ? null : (ContentLinkResponse.fromMap((map['contentLinkDefinition'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

