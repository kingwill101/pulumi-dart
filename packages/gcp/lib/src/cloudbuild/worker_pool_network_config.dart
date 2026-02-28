// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolNetworkConfig {
  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See (https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  final String peeredNetwork;

  /// Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  final String? peeredNetworkIpRange;

  /// Creates a new [WorkerPoolNetworkConfig].
  /// [peeredNetwork] Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See (https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  /// [peeredNetworkIpRange] Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  WorkerPoolNetworkConfig({
    required this.peeredNetwork,
    this.peeredNetworkIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['peeredNetwork'] = peeredNetwork;
    final peeredNetworkIpRangeValue = peeredNetworkIpRange;
    if (peeredNetworkIpRangeValue != null) {
      map['peeredNetworkIpRange'] = peeredNetworkIpRangeValue;
    }
    return map;
  }

  factory WorkerPoolNetworkConfig.fromMap(Map<String, dynamic> map) {
    return WorkerPoolNetworkConfig(
      peeredNetwork: map['peeredNetwork'] as String,
      peeredNetworkIpRange: map['peeredNetworkIpRange'] == null
          ? null
          : map['peeredNetworkIpRange'] as String,
    );
  }
}
