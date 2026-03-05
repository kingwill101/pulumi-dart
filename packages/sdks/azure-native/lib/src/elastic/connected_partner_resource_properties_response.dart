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
      azureResourceId: (() { final guardedValue = map['azureResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerDeploymentName: (() { final guardedValue = map['partnerDeploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerDeploymentUri: (() { final guardedValue = map['partnerDeploymentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

