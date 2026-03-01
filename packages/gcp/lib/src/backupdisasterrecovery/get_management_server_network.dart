// ignore_for_file: unused_element, unnecessary_cast

class GetManagementServerNetwork {
  /// Network with format 'projects/{{project_id}}/global/networks/{{network_id}}'
  final String network;

  /// Type of Network peeringMode Default value: "PRIVATE_SERVICE_ACCESS" Possible values: ["PRIVATE_SERVICE_ACCESS"]
  final String peeringMode;

  /// Creates a new [GetManagementServerNetwork].
  /// [network] Network with format 'projects/{{project_id}}/global/networks/{{network_id}}'
  /// [peeringMode] Type of Network peeringMode Default value: "PRIVATE_SERVICE_ACCESS" Possible values: ["PRIVATE_SERVICE_ACCESS"]
  GetManagementServerNetwork({
    required this.network,
    required this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'network': network, 'peeringMode': peeringMode};
  }

  factory GetManagementServerNetwork.fromMap(Map<String, dynamic> map) {
    return GetManagementServerNetwork(
      network: map['network'] as String,
      peeringMode: map['peeringMode'] as String,
    );
  }
}
