// ignore_for_file: unused_element, unnecessary_cast


/// A network interface.
class NetworkInterface {
  /// The URL of an existing network resource. You can specify the network as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} * projects/{project}/global/networks/{network} * global/networks/{network}
  final String? network;
  /// Default is false (with an external IP address). Required if no external public IP address is attached to the VM. If no external public IP address, additional configuration is required to allow the VM to access Google Services. See https://cloud.google.com/vpc/docs/configure-private-google-access and https://cloud.google.com/nat/docs/gce-example#create-nat for more information.
  final bool? noExternalIpAddress;
  /// The URL of an existing subnetwork resource in the network. You can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork} * projects/{project}/regions/{region}/subnetworks/{subnetwork} * regions/{region}/subnetworks/{subnetwork}
  final String? subnetwork;

  /// Creates a new [NetworkInterface].
  /// [network] The URL of an existing network resource. You can specify the network as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} * projects/{project}/global/networks/{network} * global/networks/{network}
  /// [noExternalIpAddress] Default is false (with an external IP address). Required if no external public IP address is attached to the VM. If no external public IP address, additional configuration is required to allow the VM to access Google Services. See https://cloud.google.com/vpc/docs/configure-private-google-access and https://cloud.google.com/nat/docs/gce-example#create-nat for more information.
  /// [subnetwork] The URL of an existing subnetwork resource in the network. You can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork} * projects/{project}/regions/{region}/subnetworks/{subnetwork} * regions/{region}/subnetworks/{subnetwork}
  NetworkInterface({
    this.network,
    this.noExternalIpAddress,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'noExternalIpAddress': ?noExternalIpAddress,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      network: map['network'] == null ? null : map['network'] as String,
      noExternalIpAddress: map['noExternalIpAddress'] == null ? null : map['noExternalIpAddress'] as bool,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

