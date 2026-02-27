// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_egress_option.dart';

/// Defines the network configuration for the pool.
class NetworkConfigCloudbuildV1 {
  /// Option to configure network egress for the workers.
  final NetworkConfigEgressOption? egressOption;

  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)
  final String peeredNetwork;

  /// Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  final String? peeredNetworkIpRange;

  NetworkConfigCloudbuildV1({
    this.egressOption,
    required this.peeredNetwork,
    this.peeredNetworkIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressOptionValue = egressOption;
    if (egressOptionValue != null) {
      map['egressOption'] = egressOptionValue.value;
    }
    map['peeredNetwork'] = peeredNetwork;
    final peeredNetworkIpRangeValue = peeredNetworkIpRange;
    if (peeredNetworkIpRangeValue != null) {
      map['peeredNetworkIpRange'] = peeredNetworkIpRangeValue;
    }
    return map;
  }

  factory NetworkConfigCloudbuildV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigCloudbuildV1(
      egressOption: map['egressOption'] == null
          ? null
          : NetworkConfigEgressOption.fromValue(map['egressOption'] as String),
      peeredNetwork: map['peeredNetwork'] as String,
      peeredNetworkIpRange: map['peeredNetworkIpRange'] == null
          ? null
          : map['peeredNetworkIpRange'] as String,
    );
  }
}
