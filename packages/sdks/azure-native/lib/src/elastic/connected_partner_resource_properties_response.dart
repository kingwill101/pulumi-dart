// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connected Partner Resource Properties
class ConnectedPartnerResourcePropertiesResponse {
  /// The azure resource Id of the deployment.
  final pulumi.Input<String>? azureResourceId;
  /// The location of the deployment.
  final pulumi.Input<String>? location;
  /// Elastic deployment name
  final pulumi.Input<String>? partnerDeploymentName;
  /// Deployment URL of the elasticsearch in Elastic cloud deployment.
  final pulumi.Input<String>? partnerDeploymentUri;

  /// Creates a new [ConnectedPartnerResourcePropertiesResponse].
  /// [azureResourceId] The azure resource Id of the deployment.
  /// [location] The location of the deployment.
  /// [partnerDeploymentName] Elastic deployment name
  /// [partnerDeploymentUri] Deployment URL of the elasticsearch in Elastic cloud deployment.
  ConnectedPartnerResourcePropertiesResponse({
    this.azureResourceId,
    this.location,
    this.partnerDeploymentName,
    this.partnerDeploymentUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceId': ?azureResourceId,
      'location': ?location,
      'partnerDeploymentName': ?partnerDeploymentName,
      'partnerDeploymentUri': ?partnerDeploymentUri,
    };
  }

  factory ConnectedPartnerResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedPartnerResourcePropertiesResponse(
      azureResourceId: map['azureResourceId'] == null ? null : (map['azureResourceId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      partnerDeploymentName: map['partnerDeploymentName'] == null ? null : (map['partnerDeploymentName'] as String).input(),
      partnerDeploymentUri: map['partnerDeploymentUri'] == null ? null : (map['partnerDeploymentUri'] as String).input(),
    );
  }
}

