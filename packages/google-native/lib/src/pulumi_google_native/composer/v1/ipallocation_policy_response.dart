// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for controlling how IPs are allocated in the GKE cluster running the Apache Airflow software.
class IPAllocationPolicyResponse {
  /// Optional. The IP address range used to allocate IP addresses to pods in the GKE cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. `/14`) to have GKE choose a range with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String clusterIpv4CidrBlock;

  /// Optional. The name of the GKE cluster's secondary range used to allocate IP addresses to pods. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true.
  final String clusterSecondaryRangeName;

  /// Optional. The IP address range of the services IP addresses in this GKE cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. `/14`) to have GKE choose a range with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
  final String servicesIpv4CidrBlock;

  /// Optional. The name of the services' secondary range used to allocate IP addresses to the GKE cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true.
  final String servicesSecondaryRangeName;

  /// Optional. Whether or not to enable Alias IPs in the GKE cluster. If `true`, a VPC-native cluster is created. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  final bool useIpAliases;

  IPAllocationPolicyResponse({
    required this.clusterIpv4CidrBlock,
    required this.clusterSecondaryRangeName,
    required this.servicesIpv4CidrBlock,
    required this.servicesSecondaryRangeName,
    required this.useIpAliases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIpv4CidrBlock'] = clusterIpv4CidrBlock;
    map['clusterSecondaryRangeName'] = clusterSecondaryRangeName;
    map['servicesIpv4CidrBlock'] = servicesIpv4CidrBlock;
    map['servicesSecondaryRangeName'] = servicesSecondaryRangeName;
    map['useIpAliases'] = useIpAliases;
    return map;
  }

  factory IPAllocationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return IPAllocationPolicyResponse(
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] as String,
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] as String,
      useIpAliases: map['useIpAliases'] as bool,
    );
  }
}
