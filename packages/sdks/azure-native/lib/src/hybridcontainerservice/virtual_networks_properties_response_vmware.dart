// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Infra network profile for VMware platform
class VirtualNetworksPropertiesResponseVmware {
  /// Name of the network segment in VSphere
  final pulumi.Input<String>? segmentName;

  /// Creates a new [VirtualNetworksPropertiesResponseVmware].
  /// [segmentName] Name of the network segment in VSphere
  VirtualNetworksPropertiesResponseVmware({
    this.segmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentName': ?segmentName,
    };
  }

  factory VirtualNetworksPropertiesResponseVmware.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseVmware(
      segmentName: map['segmentName'] == null ? null : (map['segmentName'] as String).input(),
    );
  }
}

