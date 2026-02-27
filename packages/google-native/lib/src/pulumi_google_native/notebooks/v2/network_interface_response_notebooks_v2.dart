// ignore_for_file: unused_element, unnecessary_cast

/// The definition of a network interface resource attached to a VM.
class NetworkInterfaceResponseNotebooksV2 {
  /// Optional. The name of the VPC that this VM instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final String network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final String nicType;

  /// Optional. The name of the subnet that this VM instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final String subnet;

  NetworkInterfaceResponseNotebooksV2({
    required this.network,
    required this.nicType,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['nicType'] = nicType;
    map['subnet'] = subnet;
    return map;
  }

  factory NetworkInterfaceResponseNotebooksV2.fromMap(
      Map<String, dynamic> map) {
    return NetworkInterfaceResponseNotebooksV2(
      network: map['network'] as String,
      nicType: map['nicType'] as String,
      subnet: map['subnet'] as String,
    );
  }
}
