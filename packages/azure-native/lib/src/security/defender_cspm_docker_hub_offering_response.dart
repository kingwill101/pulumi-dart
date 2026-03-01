// ignore_for_file: unused_element, unnecessary_cast


/// The Defender for CSPM Docker Hub offering configurations
class DefenderCspmDockerHubOfferingResponse {
  /// The offering description.
  final String description;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmDockerHub'.
  final String offeringType;

  /// Creates a new [DefenderCspmDockerHubOfferingResponse].
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  DefenderCspmDockerHubOfferingResponse({
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmDockerHubOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmDockerHubOfferingResponse(
      description: map['description'] as String,
      offeringType: map['offeringType'] as String,
    );
  }
}

