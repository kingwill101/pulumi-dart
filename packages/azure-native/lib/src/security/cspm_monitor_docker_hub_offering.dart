// ignore_for_file: unused_element, unnecessary_cast


/// The CSPM (Cloud security posture management) monitoring for Docker Hub offering
class CspmMonitorDockerHubOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorDockerHub'.
  final String offeringType;

  /// Creates a new [CspmMonitorDockerHubOffering].
  /// [offeringType] The type of the security offering.
  CspmMonitorDockerHubOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorDockerHubOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorDockerHubOffering(
      offeringType: map['offeringType'] as String,
    );
  }
}

