// ignore_for_file: unused_element, unnecessary_cast


/// Infra network profile for HCI platform
class VirtualNetworksPropertiesHci {
  /// Resource group in MOC(Microsoft On-premises Cloud)
  final String? mocGroup;
  /// Location in MOC(Microsoft On-premises Cloud)
  final String? mocLocation;
  /// Virtual Network name in MOC(Microsoft On-premises Cloud)
  final String? mocVnetName;

  /// Creates a new [VirtualNetworksPropertiesHci].
  /// [mocGroup] Resource group in MOC(Microsoft On-premises Cloud)
  /// [mocLocation] Location in MOC(Microsoft On-premises Cloud)
  /// [mocVnetName] Virtual Network name in MOC(Microsoft On-premises Cloud)
  VirtualNetworksPropertiesHci({
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

  factory VirtualNetworksPropertiesHci.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesHci(
      mocGroup: map['mocGroup'] == null ? null : map['mocGroup'] as String,
      mocLocation: map['mocLocation'] == null ? null : map['mocLocation'] as String,
      mocVnetName: map['mocVnetName'] == null ? null : map['mocVnetName'] as String,
    );
  }
}

