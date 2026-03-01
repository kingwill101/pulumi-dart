// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigNodeConfigIpAllocationPolicy {
  /// The IP address range used to allocate IP addresses to pods in the cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both.
  final String? clusterIpv4CidrBlock;

  /// The name of the cluster's secondary range used to allocate IP addresses to pods. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  final String? clusterSecondaryRangeName;

  /// The IP address range used to allocate IP addresses in this cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both.
  final String? servicesIpv4CidrBlock;

  /// The name of the services' secondary range used to allocate IP addresses to the cluster. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  final String? servicesSecondaryRangeName;

  /// Whether or not to enable Alias IPs in the GKE cluster. If true, a VPC-native cluster is created. Defaults to true if the ip_allocation_policy block is present in config. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  final bool? useIpAliases;

  /// Creates a new [EnvironmentConfigNodeConfigIpAllocationPolicy].
  /// [clusterIpv4CidrBlock] The IP address range used to allocate IP addresses to pods in the cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both.
  /// [clusterSecondaryRangeName] The name of the cluster's secondary range used to allocate IP addresses to pods. Specify either cluster_secondary_range_name or cluster_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  /// [servicesIpv4CidrBlock] The IP address range used to allocate IP addresses in this cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both.
  /// [servicesSecondaryRangeName] The name of the services' secondary range used to allocate IP addresses to the cluster. Specify either services_secondary_range_name or services_ipv4_cidr_block but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when use_ip_aliases is true.
  /// [useIpAliases] Whether or not to enable Alias IPs in the GKE cluster. If true, a VPC-native cluster is created. Defaults to true if the ip_allocation_policy block is present in config. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  EnvironmentConfigNodeConfigIpAllocationPolicy({
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.useIpAliases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIpv4CidrBlock': ?clusterIpv4CidrBlock,
      'clusterSecondaryRangeName': ?clusterSecondaryRangeName,
      'servicesIpv4CidrBlock': ?servicesIpv4CidrBlock,
      'servicesSecondaryRangeName': ?servicesSecondaryRangeName,
      'useIpAliases': ?useIpAliases,
    };
  }

  factory EnvironmentConfigNodeConfigIpAllocationPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentConfigNodeConfigIpAllocationPolicy(
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] == null
          ? null
          : map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] == null
          ? null
          : map['clusterSecondaryRangeName'] as String,
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] == null
          ? null
          : map['servicesIpv4CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] == null
          ? null
          : map['servicesSecondaryRangeName'] as String,
      useIpAliases: map['useIpAliases'] == null
          ? null
          : map['useIpAliases'] as bool,
    );
  }
}
