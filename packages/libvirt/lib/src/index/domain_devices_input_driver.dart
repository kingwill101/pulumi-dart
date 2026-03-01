// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInputDriver {
  /// Controls the Address Translation Services (ATS) feature for the input device driver.
  final String? ats;
  /// Enables or disables the IOMMU feature for the input device driver.
  final String? iommu;
  /// Configures whether the input device driver uses packed ring.
  final String? packed;
  /// Sets the page per virtual queue option for the input device driver.
  final String? pagePerVq;

  /// Creates a new [DomainDevicesInputDriver].
  /// [ats] Controls the Address Translation Services (ATS) feature for the input device driver.
  /// [iommu] Enables or disables the IOMMU feature for the input device driver.
  /// [packed] Configures whether the input device driver uses packed ring.
  /// [pagePerVq] Sets the page per virtual queue option for the input device driver.
  DomainDevicesInputDriver({
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

  factory DomainDevicesInputDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputDriver(
      ats: map['ats'] == null ? null : map['ats'] as String,
      iommu: map['iommu'] == null ? null : map['iommu'] as String,
      packed: map['packed'] == null ? null : map['packed'] as String,
      pagePerVq: map['pagePerVq'] == null ? null : map['pagePerVq'] as String,
    );
  }
}

