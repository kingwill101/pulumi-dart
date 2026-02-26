// ignore_for_file: unused_element, unnecessary_cast

class PscConfigResponse3 {
  /// The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  final String network;

  PscConfigResponse3({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    return map;
  }

  factory PscConfigResponse3.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse3(
      network: map['network'] as String,
    );
  }
}
