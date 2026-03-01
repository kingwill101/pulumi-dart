// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the service artifact reference id used to set same image version for
/// all virtual machines in the scale set when using 'latest' image version.
/// Minimum api-version: 2022-11-01
class ServiceArtifactReferenceResponse {
  /// The service artifact reference id in the form of
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  final String? id;

  /// Creates a new [ServiceArtifactReferenceResponse].
  /// [id] The service artifact reference id in the form of
  ServiceArtifactReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ServiceArtifactReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceArtifactReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

