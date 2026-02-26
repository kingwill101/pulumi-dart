// ignore_for_file: unused_element, unnecessary_cast

class LicenseResourceRequirements3 {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minGuestCpuCount;

  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final int? minMemoryMb;

  LicenseResourceRequirements3({
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

  factory LicenseResourceRequirements3.fromMap(Map<String, dynamic> map) {
    return LicenseResourceRequirements3(
      minGuestCpuCount: map['minGuestCpuCount'] == null
          ? null
          : map['minGuestCpuCount'] as int,
      minMemoryMb:
          map['minMemoryMb'] == null ? null : map['minMemoryMb'] as int,
    );
  }
}
