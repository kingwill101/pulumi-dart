// ignore_for_file: unused_element, unnecessary_cast


/// Infra network profile for VMware platform
class VirtualNetworksPropertiesVmware {
  /// Name of the network segment in VSphere
  final String? segmentName;

  /// Creates a new [VirtualNetworksPropertiesVmware].
  /// [segmentName] Name of the network segment in VSphere
  VirtualNetworksPropertiesVmware({
    this.segmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentName': ?segmentName,
    };
  }

  factory VirtualNetworksPropertiesVmware.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesVmware(
      segmentName: map['segmentName'] == null ? null : map['segmentName'] as String,
    );
  }
}

