// ignore_for_file: unused_element, unnecessary_cast

class LicenseResourceRequirementsComputeBeta {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minGuestCpuCount;

  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minMemoryMb;

  LicenseResourceRequirementsComputeBeta({
    this.minGuestCpuCount,
    this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minGuestCpuCountValue = minGuestCpuCount;
    if (minGuestCpuCountValue != null) {
      map['minGuestCpuCount'] = minGuestCpuCountValue;
    }
    final minMemoryMbValue = minMemoryMb;
    if (minMemoryMbValue != null) {
      map['minMemoryMb'] = minMemoryMbValue;
    }
    return map;
  }

  factory LicenseResourceRequirementsComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return LicenseResourceRequirementsComputeBeta(
      minGuestCpuCount: map['minGuestCpuCount'] == null
          ? null
          : map['minGuestCpuCount'] as int,
      minMemoryMb:
          map['minMemoryMb'] == null ? null : map['minMemoryMb'] as int,
    );
  }
}
