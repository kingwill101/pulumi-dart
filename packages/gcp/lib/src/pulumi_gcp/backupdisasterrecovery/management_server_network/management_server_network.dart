// ignore_for_file: unused_element, unnecessary_cast

class ManagementServerNetwork {
  /// Network with format `projects/{{project_id}}/global/networks/{{network_id}}`
  final String network;

  /// Type of Network peeringMode
  /// Default value is `PRIVATE_SERVICE_ACCESS`.
  /// Possible values are: `PRIVATE_SERVICE_ACCESS`.
  final String? peeringMode;

  ManagementServerNetwork({
    required this.network,
    this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    final peeringModeValue = peeringMode;
    if (peeringModeValue != null) {
      map['peeringMode'] = peeringModeValue;
    }
    return map;
  }

  factory ManagementServerNetwork.fromMap(Map<String, dynamic> map) {
    return ManagementServerNetwork(
      network: map['network'] as String,
      peeringMode:
          map['peeringMode'] == null ? null : map['peeringMode'] as String,
    );
  }
}
