// ignore_for_file: unused_element, unnecessary_cast

class LicenseResourceRequirementsComputeBeta {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minGuestCpuCount;

  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minMemoryMb;

  /// Creates a new [LicenseResourceRequirementsComputeBeta].
  /// [minGuestCpuCount] Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  /// [minMemoryMb] Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  LicenseResourceRequirementsComputeBeta({
    this.minGuestCpuCount,
    this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGuestCpuCount': ?minGuestCpuCount,
      'minMemoryMb': ?minMemoryMb,
    };
  }

  factory LicenseResourceRequirementsComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return LicenseResourceRequirementsComputeBeta(
      minGuestCpuCount: map['minGuestCpuCount'] == null
          ? null
          : map['minGuestCpuCount'] as int,
      minMemoryMb: map['minMemoryMb'] == null
          ? null
          : map['minMemoryMb'] as int,
    );
  }
}
