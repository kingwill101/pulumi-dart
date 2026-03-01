// ignore_for_file: unused_element, unnecessary_cast


/// Software Assurance properties of the cluster.
class SoftwareAssuranceProperties {
  /// Customer Intent for Software Assurance Benefit.
  final String? softwareAssuranceIntent;

  /// Creates a new [SoftwareAssuranceProperties].
  /// [softwareAssuranceIntent] Customer Intent for Software Assurance Benefit.
  SoftwareAssuranceProperties({
    this.softwareAssuranceIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softwareAssuranceIntent': ?softwareAssuranceIntent,
    };
  }

  factory SoftwareAssuranceProperties.fromMap(Map<String, dynamic> map) {
    return SoftwareAssuranceProperties(
      softwareAssuranceIntent: map['softwareAssuranceIntent'] == null ? null : map['softwareAssuranceIntent'] as String,
    );
  }
}

