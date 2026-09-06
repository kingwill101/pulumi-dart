// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of a licence.
class HypervLicense {
  /// Cost of a licence.
  final pulumi.Input<double> licenseCost;
  /// HyperV licence type.
  final pulumi.Input<dynamic> licenseType;

  /// Creates a new [HypervLicense].
  /// [licenseCost] Cost of a licence.
  /// [licenseType] HyperV licence type.
  const HypervLicense({
    required this.licenseCost,
    required this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'licenseType': licenseType,
    };
  }

  factory HypervLicense.fromMap(Map<String, dynamic> map) {
    return HypervLicense(
      licenseCost: pulumi.Input.fromValue((map['licenseCost'] as num).toDouble()),
      licenseType: pulumi.Input.fromValue(map['licenseType']),
    );
  }
}
