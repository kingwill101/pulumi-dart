// ignore_for_file: unused_element, unnecessary_cast


/// The Defender for containers Docker Hub offering configurations
class DefenderForContainersDockerHubOfferingResponse {
  /// The offering description.
  final String description;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersDockerHub'.
  final String offeringType;

  /// Creates a new [DefenderForContainersDockerHubOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  DefenderForContainersDockerHubOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderForContainersDockerHubOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersDockerHubOfferingResponse(
      description: map['description'] as String,
      offeringType: map['offeringType'] as String,
    );
  }
}

