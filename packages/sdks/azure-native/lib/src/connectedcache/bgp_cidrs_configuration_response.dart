// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mcc cache node Bgp Cidr details.
class BgpCidrsConfigurationResponse {
  /// Mcc cache node Bgp Cidr details.
  final pulumi.Input<List<String>> bgpCidrs;

  /// Creates a new [BgpCidrsConfigurationResponse].
  /// [bgpCidrs] Mcc cache node Bgp Cidr details.
  const BgpCidrsConfigurationResponse({
    required this.bgpCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpCidrs': bgpCidrs,
    };
  }

  factory BgpCidrsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BgpCidrsConfigurationResponse(
      bgpCidrs: pulumi.Input.fromValue((map['bgpCidrs'] as List).cast<String>()),
    );
  }
}
