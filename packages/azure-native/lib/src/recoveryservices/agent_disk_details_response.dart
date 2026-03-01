// ignore_for_file: unused_element, unnecessary_cast


/// Agent disk details.
class AgentDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double capacityInBytes;
  /// The disk Id.
  final String diskId;
  /// The disk name.
  final String diskName;
  /// A value indicating whether the disk is the OS disk.
  final String isOSDisk;
  /// The lun of disk.
  final int lunId;

  /// Creates a new [AgentDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk Id.
  /// [diskName] The disk name.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [lunId] The lun of disk.
  AgentDiskDetailsResponse({
    required this.capacityInBytes,
    required this.diskId,
    required this.diskName,
    required this.isOSDisk,
    required this.lunId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'diskId': diskId,
      'diskName': diskName,
      'isOSDisk': isOSDisk,
      'lunId': lunId,
    };
  }

  factory AgentDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AgentDiskDetailsResponse(
      capacityInBytes: map['capacityInBytes'] as double,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      isOSDisk: map['isOSDisk'] as String,
      lunId: map['lunId'] as int,
    );
  }
}

