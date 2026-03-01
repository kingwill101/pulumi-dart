// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm un-protected disk details.
class InMageRcmUnProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double capacityInBytes;
  /// The disk Id.
  final String diskId;
  /// The disk name.
  final String diskName;

  /// Creates a new [InMageRcmUnProtectedDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [diskId] The disk Id.
  /// [diskName] The disk name.
  InMageRcmUnProtectedDiskDetailsResponse({
    required this.capacityInBytes,
    required this.diskId,
    required this.diskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'diskId': diskId,
      'diskName': diskName,
    };
  }

  factory InMageRcmUnProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmUnProtectedDiskDetailsResponse(
      capacityInBytes: map['capacityInBytes'] as double,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
    );
  }
}

