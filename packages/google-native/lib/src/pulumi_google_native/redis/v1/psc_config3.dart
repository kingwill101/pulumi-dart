// ignore_for_file: unused_element, unnecessary_cast

class PscConfig3 {
  /// The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  final String network;

  PscConfig3({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    return map;
  }

  factory PscConfig3.fromMap(Map<String, dynamic> map) {
    return PscConfig3(
      network: map['network'] as String,
    );
  }
}
