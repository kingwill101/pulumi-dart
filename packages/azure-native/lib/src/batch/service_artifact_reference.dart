// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
class ServiceArtifactReference {
  /// The service artifact reference id in the form of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  final String id;

  /// Creates a new [ServiceArtifactReference].
  /// [id] The service artifact reference id in the form of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName}
  ServiceArtifactReference({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ServiceArtifactReference.fromMap(Map<String, dynamic> map) {
    return ServiceArtifactReference(
      id: map['id'] as String,
    );
  }
}

