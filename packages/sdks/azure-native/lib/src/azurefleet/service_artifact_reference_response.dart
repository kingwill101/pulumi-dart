// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the service artifact reference id used to set same image version for
/// all virtual machines in the scale set when using 'latest' image version.
/// Minimum api-version: 2022-11-01
class ServiceArtifactReferenceResponse {
  /// The service artifact reference id in the form of
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  final pulumi.Input<String>? id;

  /// Creates a new [ServiceArtifactReferenceResponse].
  /// [id] The service artifact reference id in the form of
  const ServiceArtifactReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ServiceArtifactReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceArtifactReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
