// ignore_for_file: unused_element, unnecessary_cast


/// Representation of a licence.
class HypervLicense {
  /// Cost of a licence.
  final double licenseCost;
  /// HyperV licence type.
  final String licenseType;

  /// Creates a new [HypervLicense].
  /// [licenseCost] Cost of a licence.
  /// [licenseType] HyperV licence type.
  HypervLicense({
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
      licenseCost: map['licenseCost'] as double,
      licenseType: map['licenseType'] as String,
    );
  }
}

