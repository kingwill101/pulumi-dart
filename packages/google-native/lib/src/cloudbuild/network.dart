// ignore_for_file: unused_element, unnecessary_cast

/// Network describes the GCP network used to create workers in.
class Network {
  /// Network on which the workers are created. "default" network is used if empty.
  final String? network;

  /// Project id containing the defined network and subnetwork. For a peered VPC, this will be the same as the project_id in which the workers are created. For a shared VPC, this will be the project sharing the network with the project_id project in which workers will be created. For custom workers with no VPC, this will be the same as project_id.
  final String? project;

  /// Subnetwork on which the workers are created. "default" subnetwork is used if empty.
  final String? subnetwork;

  /// Creates a new [Network].
  /// [network] Network on which the workers are created. "default" network is used if empty.
  /// [project] Project id containing the defined network and subnetwork. For a peered VPC, this will be the same as the project_id in which the workers are created. For a shared VPC, this will be the project sharing the network with the project_id project in which workers will be created. For custom workers with no VPC, this will be the same as project_id.
  /// [subnetwork] Subnetwork on which the workers are created. "default" subnetwork is used if empty.
  Network({
    this.network,
    this.project,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory Network.fromMap(Map<String, dynamic> map) {
    return Network(
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
