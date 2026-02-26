// ignore_for_file: unused_element, unnecessary_cast

/// A network interface.
class NetworkInterfaceResponse {
  /// The URL of an existing network resource. You can specify the network as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} * projects/{project}/global/networks/{network} * global/networks/{network}
  final String network;

  /// Default is false (with an external IP address). Required if no external public IP address is attached to the VM. If no external public IP address, additional configuration is required to allow the VM to access Google Services. See https://cloud.google.com/vpc/docs/configure-private-google-access and https://cloud.google.com/nat/docs/gce-example#create-nat for more information.
  final bool noExternalIpAddress;

  /// The URL of an existing subnetwork resource in the network. You can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork} * projects/{project}/regions/{region}/subnetworks/{subnetwork} * regions/{region}/subnetworks/{subnetwork}
  final String subnetwork;

  NetworkInterfaceResponse({
    required this.network,
    required this.noExternalIpAddress,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['noExternalIpAddress'] = noExternalIpAddress;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      network: map['network'] as String,
      noExternalIpAddress: map['noExternalIpAddress'] as bool,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
