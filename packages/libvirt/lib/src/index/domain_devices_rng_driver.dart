// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRngDriver {
  /// Enables or disables Address Translation Services (ATS) for the random number generator driver.
  final String? ats;
  /// Enables or disables I/O Memory Management Unit (IOMMU) for the random number generator driver.
  final String? iommu;
  /// Indicates whether packed ring buffers are used for the random number generator driver.
  final String? packed;
  /// Configures the page per virtual queue setting for the random number generator driver.
  final String? pagePerVq;

  /// Creates a new [DomainDevicesRngDriver].
  /// [ats] Enables or disables Address Translation Services (ATS) for the random number generator driver.
  /// [iommu] Enables or disables I/O Memory Management Unit (IOMMU) for the random number generator driver.
  /// [packed] Indicates whether packed ring buffers are used for the random number generator driver.
  /// [pagePerVq] Configures the page per virtual queue setting for the random number generator driver.
  DomainDevicesRngDriver({
    this.ats,
    this.iommu,
    this.packed,
    this.pagePerVq,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ats': ?ats,
      'iommu': ?iommu,
      'packed': ?packed,
      'pagePerVq': ?pagePerVq,
    };
  }

  factory DomainDevicesRngDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngDriver(
      ats: map['ats'] == null ? null : map['ats'] as String,
      iommu: map['iommu'] == null ? null : map['iommu'] as String,
      packed: map['packed'] == null ? null : map['packed'] as String,
      pagePerVq: map['pagePerVq'] == null ? null : map['pagePerVq'] as String,
    );
  }
}

