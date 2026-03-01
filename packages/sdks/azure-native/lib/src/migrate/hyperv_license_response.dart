// ignore_for_file: unused_element, unnecessary_cast


/// Representation of a licence.
class HypervLicenseResponse {
  /// Cost of a licence.
  final double licenseCost;
  /// HyperV licence type.
  final String licenseType;

  /// Creates a new [HypervLicenseResponse].
  /// [licenseCost] Cost of a licence.
  /// [licenseType] HyperV licence type.
  HypervLicenseResponse({
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
      licenseCost: map['licenseCost'] as double,
      licenseType: map['licenseType'] as String,
    );
  }
}

