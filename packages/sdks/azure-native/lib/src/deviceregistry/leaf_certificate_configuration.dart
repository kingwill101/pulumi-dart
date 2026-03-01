// ignore_for_file: unused_element, unnecessary_cast


/// The leaf certificate configuration.
class LeafCertificateConfiguration {
  /// The validity period in days.
  final int validityPeriodInDays;

  /// Creates a new [LeafCertificateConfiguration].
  /// [validityPeriodInDays] The validity period in days.
  LeafCertificateConfiguration({
    required this.validityPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validityPeriodInDays': validityPeriodInDays,
    };
  }

  factory LeafCertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return LeafCertificateConfiguration(
      validityPeriodInDays: map['validityPeriodInDays'] as int,
    );
  }
}

