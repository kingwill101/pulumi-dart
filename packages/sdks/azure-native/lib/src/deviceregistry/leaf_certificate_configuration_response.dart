// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The leaf certificate configuration.
class LeafCertificateConfigurationResponse {
  /// The validity period in days.
  final pulumi.Input<int> validityPeriodInDays;

  /// Creates a new [LeafCertificateConfigurationResponse].
  /// [validityPeriodInDays] The validity period in days.
  const LeafCertificateConfigurationResponse({
    required this.validityPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validityPeriodInDays': validityPeriodInDays,
    };
  }

  factory LeafCertificateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LeafCertificateConfigurationResponse(
      validityPeriodInDays: pulumi.Input.fromValue(map['validityPeriodInDays'] as int),
    );
  }
}

