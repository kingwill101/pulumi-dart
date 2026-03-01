// ignore_for_file: unused_element, unnecessary_cast


/// Infra network profile for HCI platform
class VirtualNetworksPropertiesResponseHci {
  /// Resource group in MOC(Microsoft On-premises Cloud)
  final String? mocGroup;
  /// Location in MOC(Microsoft On-premises Cloud)
  final String? mocLocation;
  /// Virtual Network name in MOC(Microsoft On-premises Cloud)
  final String? mocVnetName;

  /// Creates a new [VirtualNetworksPropertiesResponseHci].
  /// [mocGroup] Resource group in MOC(Microsoft On-premises Cloud)
  /// [mocLocation] Location in MOC(Microsoft On-premises Cloud)
  /// [mocVnetName] Virtual Network name in MOC(Microsoft On-premises Cloud)
  VirtualNetworksPropertiesResponseHci({
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

  factory VirtualNetworksPropertiesResponseHci.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseHci(
      mocGroup: map['mocGroup'] == null ? null : map['mocGroup'] as String,
      mocLocation: map['mocLocation'] == null ? null : map['mocLocation'] as String,
      mocVnetName: map['mocVnetName'] == null ? null : map['mocVnetName'] as String,
    );
  }
}

