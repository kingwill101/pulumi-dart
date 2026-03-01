// ignore_for_file: unused_element, unnecessary_cast


/// Mcc cache node Bgp Cidr details.
class BgpCidrsConfigurationResponse {
  /// Mcc cache node Bgp Cidr details.
  final List<String> bgpCidrs;

  /// Creates a new [BgpCidrsConfigurationResponse].
  /// [bgpCidrs] Mcc cache node Bgp Cidr details.
  BgpCidrsConfigurationResponse({
    required this.bgpCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpCidrs': bgpCidrs,
    };
  }

  factory BgpCidrsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BgpCidrsConfigurationResponse(
      bgpCidrs: (map['bgpCidrs'] as List).cast<String>(),
    );
  }
}

