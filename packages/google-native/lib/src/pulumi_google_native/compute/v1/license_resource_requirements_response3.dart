// ignore_for_file: unused_element, unnecessary_cast

class LicenseResourceRequirementsResponse3 {
  /// Minimum number of guest cpus required to use the Instance. Enforced at Instance creation and Instance start.
  final int minGuestCpuCount;

  /// Minimum memory required to use the Instance. Enforced at Instance creation and Instance start.
  final int minMemoryMb;

  LicenseResourceRequirementsResponse3({
    required this.minGuestCpuCount,
    required this.minMemoryMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minGuestCpuCount'] = minGuestCpuCount;
    map['minMemoryMb'] = minMemoryMb;
    return map;
  }

  factory LicenseResourceRequirementsResponse3.fromMap(
      Map<String, dynamic> map) {
    return LicenseResourceRequirementsResponse3(
      minGuestCpuCount: map['minGuestCpuCount'] as int,
      minMemoryMb: map['minMemoryMb'] as int,
    );
  }
}
