// ignore_for_file: unused_element, unnecessary_cast

class LicenseResourceRequirementsComputeV1 {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minGuestCpuCount;

  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minMemoryMb;

  /// Creates a new [LicenseResourceRequirementsComputeV1].
  /// [minGuestCpuCount] Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  /// [minMemoryMb] Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  LicenseResourceRequirementsComputeV1({
    this.minGuestCpuCount,
    this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGuestCpuCount': ?minGuestCpuCount,
      'minMemoryMb': ?minMemoryMb,
    };
  }

  factory LicenseResourceRequirementsComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return LicenseResourceRequirementsComputeV1(
      minGuestCpuCount: map['minGuestCpuCount'] == null
          ? null
          : map['minGuestCpuCount'] as int,
      minMemoryMb: map['minMemoryMb'] == null
          ? null
          : map['minMemoryMb'] as int,
    );
  }
}
