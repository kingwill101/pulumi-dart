// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Virtual Hard Disk.
class VirtualHardDiskArmReferenceResponse {
  /// The Azure Resource ID for a Virtual Hard Disk.
  final String? id;

  /// Creates a new [VirtualHardDiskArmReferenceResponse].
  /// [id] The Azure Resource ID for a Virtual Hard Disk.
  VirtualHardDiskArmReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualHardDiskArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskArmReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

