// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Infra network profile for VMware platform
class VirtualNetworksPropertiesVmware {
  /// Name of the network segment in VSphere
  final pulumi.Input<String>? segmentName;

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
      segmentName: (() { final guardedValue = map['segmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

