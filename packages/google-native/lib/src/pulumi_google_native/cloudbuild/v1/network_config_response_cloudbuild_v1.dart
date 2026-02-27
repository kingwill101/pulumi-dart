// ignore_for_file: unused_element, unnecessary_cast

/// Defines the network configuration for the pool.
class NetworkConfigResponseCloudbuildV1 {
  /// Option to configure network egress for the workers.
  final String egressOption;

  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)
  final String peeredNetwork;

  /// Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  final String peeredNetworkIpRange;

  NetworkConfigResponseCloudbuildV1({
    required this.egressOption,
    required this.peeredNetwork,
    required this.peeredNetworkIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressOption'] = egressOption;
    map['peeredNetwork'] = peeredNetwork;
    map['peeredNetworkIpRange'] = peeredNetworkIpRange;
    return map;
  }

  factory NetworkConfigResponseCloudbuildV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseCloudbuildV1(
      egressOption: map['egressOption'] as String,
      peeredNetwork: map['peeredNetwork'] as String,
      peeredNetworkIpRange: map['peeredNetworkIpRange'] as String,
    );
  }
}
