/// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
enum RegionNetworkEndpointGroupNetworkEndpointTypeComputeBeta {
  gceVmIp("GCE_VM_IP"),
  gceVmIpPort("GCE_VM_IP_PORT"),
  internetFqdnPort("INTERNET_FQDN_PORT"),
  internetIpPort("INTERNET_IP_PORT"),
  nonGcpPrivateIpPort("NON_GCP_PRIVATE_IP_PORT"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT"),
  serverless("SERVERLESS");

  const RegionNetworkEndpointGroupNetworkEndpointTypeComputeBeta(this.value);
  final String value;

  static RegionNetworkEndpointGroupNetworkEndpointTypeComputeBeta fromValue(
      String value) {
    for (final item
        in RegionNetworkEndpointGroupNetworkEndpointTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionNetworkEndpointGroupNetworkEndpointTypeComputeBeta value: $value');
  }
}
