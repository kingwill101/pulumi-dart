// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Infra network profile for VMware platform
class VirtualNetworksPropertiesResponseVmware {
  /// Name of the network segment in VSphere
  final pulumi.Input<String>? segmentName;

  /// Creates a new [VirtualNetworksPropertiesResponseVmware].
  /// [segmentName] Name of the network segment in VSphere
  const VirtualNetworksPropertiesResponseVmware({
    this.segmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentName': ?segmentName,
    };
  }

  factory VirtualNetworksPropertiesResponseVmware.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseVmware(
      segmentName: (() { final guardedValue = map['segmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

