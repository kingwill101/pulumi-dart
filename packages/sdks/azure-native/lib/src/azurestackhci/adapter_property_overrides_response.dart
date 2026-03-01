// ignore_for_file: unused_element, unnecessary_cast


/// The AdapterPropertyOverrides of a cluster.
class AdapterPropertyOverridesResponse {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String jumboPacket;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String networkDirect;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  final String networkDirectTechnology;

  /// Creates a new [AdapterPropertyOverridesResponse].
  /// [jumboPacket] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [networkDirect] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [networkDirectTechnology] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  AdapterPropertyOverridesResponse({
    required this.jumboPacket,
    required this.networkDirect,
    required this.networkDirectTechnology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jumboPacket': jumboPacket,
      'networkDirect': networkDirect,
      'networkDirectTechnology': networkDirectTechnology,
    };
  }

  factory AdapterPropertyOverridesResponse.fromMap(Map<String, dynamic> map) {
    return AdapterPropertyOverridesResponse(
      jumboPacket: map['jumboPacket'] as String,
      networkDirect: map['networkDirect'] as String,
      networkDirectTechnology: map['networkDirectTechnology'] as String,
    );
  }
}

