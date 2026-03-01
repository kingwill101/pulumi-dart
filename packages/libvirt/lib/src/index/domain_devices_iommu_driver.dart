// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesIommuDriver {
  /// Configures the address width bits for the IOMMU driver.
  final double? awBits;
  /// Sets the caching mode for the IOMMU device.
  final String? cachingMode;
  /// Indicates if DMA address translation is enabled for the IOMMU driver.
  final String? dmaTranslation;
  /// Configures the EIM (External Interrupt Management) setting for the IOMMU driver.
  final String? eim;
  /// Sets the interrupt remapping feature for the IOMMU driver, allowing for improved handling of interrupts.
  final String? intRemap;
  /// Enables the IOTLB (Input/Output Translation Lookaside Buffer) feature for the IOMMU driver, optimizing memory translation for I/O devices.
  final String? iotlb;
  /// Controls the passthrough capability of the IOMMU driver, allowing direct device assignments.
  final String? passthrough;
  /// Configures the XT (Extended Translation) support for the IOMMU driver, enabling advanced memory translation features.
  final String? xtSup;

  /// Creates a new [DomainDevicesIommuDriver].
  /// [awBits] Configures the address width bits for the IOMMU driver.
  /// [cachingMode] Sets the caching mode for the IOMMU device.
  /// [dmaTranslation] Indicates if DMA address translation is enabled for the IOMMU driver.
  /// [eim] Configures the EIM (External Interrupt Management) setting for the IOMMU driver.
  /// [intRemap] Sets the interrupt remapping feature for the IOMMU driver, allowing for improved handling of interrupts.
  /// [iotlb] Enables the IOTLB (Input/Output Translation Lookaside Buffer) feature for the IOMMU driver, optimizing memory translation for I/O devices.
  /// [passthrough] Controls the passthrough capability of the IOMMU driver, allowing direct device assignments.
  /// [xtSup] Configures the XT (Extended Translation) support for the IOMMU driver, enabling advanced memory translation features.
  DomainDevicesIommuDriver({
    this.awBits,
    this.cachingMode,
    this.dmaTranslation,
    this.eim,
    this.intRemap,
    this.iotlb,
    this.passthrough,
    this.xtSup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awBits': ?awBits,
      'cachingMode': ?cachingMode,
      'dmaTranslation': ?dmaTranslation,
      'eim': ?eim,
      'intRemap': ?intRemap,
      'iotlb': ?iotlb,
      'passthrough': ?passthrough,
      'xtSup': ?xtSup,
    };
  }

  factory DomainDevicesIommuDriver.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommuDriver(
      awBits: map['awBits'] == null ? null : map['awBits'] as double,
      cachingMode: map['cachingMode'] == null ? null : map['cachingMode'] as String,
      dmaTranslation: map['dmaTranslation'] == null ? null : map['dmaTranslation'] as String,
      eim: map['eim'] == null ? null : map['eim'] as String,
      intRemap: map['intRemap'] == null ? null : map['intRemap'] as String,
      iotlb: map['iotlb'] == null ? null : map['iotlb'] as String,
      passthrough: map['passthrough'] == null ? null : map['passthrough'] as String,
      xtSup: map['xtSup'] == null ? null : map['xtSup'] as String,
    );
  }
}

