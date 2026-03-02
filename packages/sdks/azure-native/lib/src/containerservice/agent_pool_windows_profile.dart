// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Windows agent pool's specific profile.
class AgentPoolWindowsProfile {
  /// Whether to disable OutboundNAT in windows nodes. The default value is false. Outbound NAT can only be disabled if the cluster outboundType is NAT Gateway and the Windows agent pool does not have node public IP enabled.
  final pulumi.Input<bool>? disableOutboundNat;

  /// Creates a new [AgentPoolWindowsProfile].
  /// [disableOutboundNat] Whether to disable OutboundNAT in windows nodes. The default value is false. Outbound NAT can only be disabled if the cluster outboundType is NAT Gateway and the Windows agent pool does not have node public IP enabled.
  AgentPoolWindowsProfile({
    this.disableOutboundNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableOutboundNat': ?disableOutboundNat,
    };
  }

  factory AgentPoolWindowsProfile.fromMap(Map<String, dynamic> map) {
    return AgentPoolWindowsProfile(
      disableOutboundNat: map['disableOutboundNat'] == null ? null : (map['disableOutboundNat'] as bool).input(),
    );
  }
}

