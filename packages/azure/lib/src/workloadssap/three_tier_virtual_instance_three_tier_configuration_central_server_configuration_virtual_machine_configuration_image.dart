// ignore_for_file: unused_element, unnecessary_cast


class ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage {
  /// Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  final String offer;
  /// The publisher of the Image. Possible values are `RedHat` and `SUSE`. Changing this forces a new resource to be created.
  final String publisher;
  /// The SKU of the Image. Changing this forces a new resource to be created.
  final String sku;
  /// Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  final String version;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage].
  /// [offer] Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  /// [publisher] The publisher of the Image. Possible values are `RedHat` and `SUSE`. Changing this forces a new resource to be created.
  /// [sku] The SKU of the Image. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': version,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

