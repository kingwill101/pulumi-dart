// ignore_for_file: unused_element, unnecessary_cast


/// The AdapterPropertyOverrides of a cluster.
class AdapterPropertyOverrides {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String? jumboPacket;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String? networkDirect;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  final String? networkDirectTechnology;

  /// Creates a new [AdapterPropertyOverrides].
  /// [jumboPacket] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [networkDirect] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [networkDirectTechnology] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  AdapterPropertyOverrides({
    this.jumboPacket,
    this.networkDirect,
    this.networkDirectTechnology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jumboPacket': ?jumboPacket,
      'networkDirect': ?networkDirect,
      'networkDirectTechnology': ?networkDirectTechnology,
    };
  }

  factory AdapterPropertyOverrides.fromMap(Map<String, dynamic> map) {
    return AdapterPropertyOverrides(
      jumboPacket: map['jumboPacket'] == null ? null : map['jumboPacket'] as String,
      networkDirect: map['networkDirect'] == null ? null : map['networkDirect'] as String,
      networkDirectTechnology: map['networkDirectTechnology'] == null ? null : map['networkDirectTechnology'] as String,
    );
  }
}

