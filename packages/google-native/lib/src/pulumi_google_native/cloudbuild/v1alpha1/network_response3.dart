// ignore_for_file: unused_element, unnecessary_cast

/// Network describes the GCP network used to create workers in.
class NetworkResponse3 {
  /// Network on which the workers are created. "default" network is used if empty.
  final String network;

  /// Project id containing the defined network and subnetwork. For a peered VPC, this will be the same as the project_id in which the workers are created. For a shared VPC, this will be the project sharing the network with the project_id project in which workers will be created. For custom workers with no VPC, this will be the same as project_id.
  final String project;

  /// Subnetwork on which the workers are created. "default" subnetwork is used if empty.
  final String subnetwork;

  NetworkResponse3({
    required this.network,
    required this.project,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['project'] = project;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory NetworkResponse3.fromMap(Map<String, dynamic> map) {
    return NetworkResponse3(
      network: map['network'] as String,
      project: map['project'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
