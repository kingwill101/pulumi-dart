// ignore_for_file: unused_element, unnecessary_cast

class ClusterPscConfig2 {
  /// Required. The consumer network where the network address of
  /// the discovery endpoint will be reserved, in the form of
  /// projects/{network_project_id_or_number}/global/networks/{network_id}.
  final String network;

  ClusterPscConfig2({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    return map;
  }

  factory ClusterPscConfig2.fromMap(Map<String, dynamic> map) {
    return ClusterPscConfig2(
      network: map['network'] as String,
    );
  }
}
