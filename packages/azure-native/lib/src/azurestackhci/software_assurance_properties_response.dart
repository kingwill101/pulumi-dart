// ignore_for_file: unused_element, unnecessary_cast


/// Software Assurance properties of the cluster.
class SoftwareAssurancePropertiesResponse {
  /// TimeStamp denoting the latest SA benefit applicability is validated.
  final String lastUpdated;
  /// Customer Intent for Software Assurance Benefit.
  final String? softwareAssuranceIntent;
  /// Status of the Software Assurance for the cluster.
  final String softwareAssuranceStatus;

  /// Creates a new [SoftwareAssurancePropertiesResponse].
  /// [lastUpdated] TimeStamp denoting the latest SA benefit applicability is validated.
  /// [softwareAssuranceIntent] Customer Intent for Software Assurance Benefit.
  /// [softwareAssuranceStatus] Status of the Software Assurance for the cluster.
  SoftwareAssurancePropertiesResponse({
    required this.lastUpdated,
    this.softwareAssuranceIntent,
    required this.softwareAssuranceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'softwareAssuranceIntent': ?softwareAssuranceIntent,
      'softwareAssuranceStatus': softwareAssuranceStatus,
    };
  }

  factory SoftwareAssurancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareAssurancePropertiesResponse(
      lastUpdated: map['lastUpdated'] as String,
      softwareAssuranceIntent: map['softwareAssuranceIntent'] == null ? null : map['softwareAssuranceIntent'] as String,
      softwareAssuranceStatus: map['softwareAssuranceStatus'] as String,
    );
  }
}

