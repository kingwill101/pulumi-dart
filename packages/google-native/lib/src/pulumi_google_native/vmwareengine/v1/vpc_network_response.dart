// ignore_for_file: unused_element, unnecessary_cast

/// Represents a VMware Engine VPC network that is managed by a VMware Engine network resource.
class VpcNetworkResponse {
  /// The relative resource name of the service VPC network this VMware Engine network is attached to. For example: `projects/123123/global/networks/my-network`
  final String network;

  /// Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  final String type;

  VpcNetworkResponse({
    required this.network,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['type'] = type;
    return map;
  }

  factory VpcNetworkResponse.fromMap(Map<String, dynamic> map) {
    return VpcNetworkResponse(
      network: map['network'] as String,
      type: map['type'] as String,
    );
  }
}
