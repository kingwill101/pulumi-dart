// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Infrastructure network profile for HCI platform
class VirtualNetworkPropertiesHci {
  /// Group in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocGroup;
  /// Location in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocLocation;
  /// Virtual Network name in MOC(Microsoft On-premises Cloud)
  final pulumi.Input<String>? mocVnetName;

  /// Creates a new [VirtualNetworkPropertiesHci].
  /// [mocGroup] Group in MOC(Microsoft On-premises Cloud)
  /// [mocLocation] Location in MOC(Microsoft On-premises Cloud)
  /// [mocVnetName] Virtual Network name in MOC(Microsoft On-premises Cloud)
  const VirtualNetworkPropertiesHci({
    this.mocGroup,
    this.mocLocation,
    this.mocVnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mocGroup': ?mocGroup,
      'mocLocation': ?mocLocation,
      'mocVnetName': ?mocVnetName,
    };
  }

  factory VirtualNetworkPropertiesHci.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesHci(
      mocGroup: (() { final guardedValue = map['mocGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mocLocation: (() { final guardedValue = map['mocLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mocVnetName: (() { final guardedValue = map['mocVnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
