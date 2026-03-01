// ignore_for_file: unused_element, unnecessary_cast


/// VMwareToAzStack disk input.
class VMwareToAzStackHCIDiskInputResponse {
  /// Gets or sets the type of the virtual hard disk, vhd or vhdx.
  final String diskFileFormat;
  /// Gets or sets the disk Id.
  final String diskId;
  /// Gets or sets the disk size in GB.
  final double diskSizeGB;
  /// Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// disk.
  final bool? isDynamic;
  /// Gets or sets a value indicating whether disk is os disk.
  final bool isOsDisk;
  /// Gets or sets the target storage account ARM Id.
  final String? storageContainerId;

  /// Creates a new [VMwareToAzStackHCIDiskInputResponse].
  /// [diskFileFormat] Gets or sets the type of the virtual hard disk, vhd or vhdx.
  /// [diskId] Gets or sets the disk Id.
  /// [diskSizeGB] Gets or sets the disk size in GB.
  /// [isDynamic] Gets or sets a value indicating whether dynamic sizing is enabled on the virtual hard
  /// [isOsDisk] Gets or sets a value indicating whether disk is os disk.
  /// [storageContainerId] Gets or sets the target storage account ARM Id.
  VMwareToAzStackHCIDiskInputResponse({
    required this.diskFileFormat,
    required this.diskId,
    required this.diskSizeGB,
    this.isDynamic,
    required this.isOsDisk,
    this.storageContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskFileFormat': diskFileFormat,
      'diskId': diskId,
      'diskSizeGB': diskSizeGB,
      'isDynamic': ?isDynamic,
      'isOsDisk': isOsDisk,
      'storageContainerId': ?storageContainerId,
    };
  }

  factory VMwareToAzStackHCIDiskInputResponse.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIDiskInputResponse(
      diskFileFormat: map['diskFileFormat'] as String,
      diskId: map['diskId'] as String,
      diskSizeGB: map['diskSizeGB'] as double,
      isDynamic: map['isDynamic'] == null ? null : map['isDynamic'] as bool,
      isOsDisk: map['isOsDisk'] as bool,
      storageContainerId: map['storageContainerId'] == null ? null : map['storageContainerId'] as String,
    );
  }
}

