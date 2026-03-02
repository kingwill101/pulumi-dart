// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The leaf certificate configuration.
class LeafCertificateConfiguration {
  /// The validity period in days.
  final pulumi.Input<int> validityPeriodInDays;

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
      validityPeriodInDays: (map['validityPeriodInDays'] as int).input(),
    );
  }
}

