// ignore_for_file: unused_element, unnecessary_cast


/// The leaf certificate configuration.
class LeafCertificateConfigurationResponse {
  /// The validity period in days.
  final int validityPeriodInDays;

  /// Creates a new [LeafCertificateConfigurationResponse].
  /// [validityPeriodInDays] The validity period in days.
  LeafCertificateConfigurationResponse({
    required this.validityPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validityPeriodInDays': validityPeriodInDays,
    };
  }

  factory LeafCertificateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LeafCertificateConfigurationResponse(
      validityPeriodInDays: map['validityPeriodInDays'] as int,
    );
  }
}

