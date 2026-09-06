// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of a licence.
class HypervLicenseResponse {
  /// Cost of a licence.
  final pulumi.Input<double> licenseCost;
  /// HyperV licence type.
  final pulumi.Input<String> licenseType;

  /// Creates a new [HypervLicenseResponse].
  /// [licenseCost] Cost of a licence.
  /// [licenseType] HyperV licence type.
  const HypervLicenseResponse({
    required this.licenseCost,
    required this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'licenseType': licenseType,
    };
  }

  factory HypervLicenseResponse.fromMap(Map<String, dynamic> map) {
    return HypervLicenseResponse(
      licenseCost: pulumi.Input.fromValue((map['licenseCost'] as num).toDouble()),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
    );
  }
}
