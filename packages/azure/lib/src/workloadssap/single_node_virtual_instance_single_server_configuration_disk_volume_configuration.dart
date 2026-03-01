// ignore_for_file: unused_element, unnecessary_cast


class SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration {
  /// The total number of disks required for the concerned volume. Possible values are at least `1`. Changing this forces a new resource to be created.
  final int numberOfDisks;
  /// The size of the Disk in GB. Changing this forces a new resource to be created.
  final int sizeInGb;
  /// The name of the Disk SKU. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  final String skuName;
  /// Specifies the volumn name of the database disk. Possible values are `backup`, `hana/data`, `hana/log`, `hana/shared`, `os` and `usr/sap`. Changing this forces a new resource to be created.
  final String volumeName;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration].
  /// [numberOfDisks] The total number of disks required for the concerned volume. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [sizeInGb] The size of the Disk in GB. Changing this forces a new resource to be created.
  /// [skuName] The name of the Disk SKU. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  /// [volumeName] Specifies the volumn name of the database disk. Possible values are `backup`, `hana/data`, `hana/log`, `hana/shared`, `os` and `usr/sap`. Changing this forces a new resource to be created.
  SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration({
    required this.numberOfDisks,
    required this.sizeInGb,
    required this.skuName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberOfDisks': numberOfDisks,
      'sizeInGb': sizeInGb,
      'skuName': skuName,
      'volumeName': volumeName,
    };
  }

  factory SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfigurationDiskVolumeConfiguration(
      numberOfDisks: map['numberOfDisks'] as int,
      sizeInGb: map['sizeInGb'] as int,
      skuName: map['skuName'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}

