// ignore_for_file: unused_element, unnecessary_cast


class GetNetworksNetwork {
  final bool deleteProtection;
  /// Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  final bool exposeRoutesToVswitch;
  final int id;
  final String ipRange;
  final Map<String, String> labels;
  final String name;

  /// Creates a new [GetNetworksNetwork].
  /// [deleteProtection] Required.
  /// [exposeRoutesToVswitch] Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  /// [id] Required.
  /// [ipRange] Required.
  /// [labels] Required.
  /// [name] Required.
  GetNetworksNetwork({
    required this.deleteProtection,
    required this.exposeRoutesToVswitch,
    required this.id,
    required this.ipRange,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'exposeRoutesToVswitch': exposeRoutesToVswitch,
      'id': id,
      'ipRange': ipRange,
      'labels': labels,
      'name': name,
    };
  }

  factory GetNetworksNetwork.fromMap(Map<String, dynamic> map) {
    return GetNetworksNetwork(
      deleteProtection: map['deleteProtection'] as bool,
      exposeRoutesToVswitch: map['exposeRoutesToVswitch'] as bool,
      id: map['id'] as int,
      ipRange: map['ipRange'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}

