// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AdapterPropertyOverrides of a cluster.
class AdapterPropertyOverridesResponse {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String> jumboPacket;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String> networkDirect;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
  final pulumi.Input<String> networkDirectTechnology;

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
      jumboPacket: (map['jumboPacket'] as String).input(),
      networkDirect: (map['networkDirect'] as String).input(),
      networkDirectTechnology: (map['networkDirectTechnology'] as String).input(),
    );
  }
}

