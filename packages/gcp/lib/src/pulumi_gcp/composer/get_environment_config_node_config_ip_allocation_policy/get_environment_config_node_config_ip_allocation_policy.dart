// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigNodeConfigIpAllocationPolicy {
  /// The IP address range used to allocate IP addresses to pods in the cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when<span pulumi-lang-nodejs=" useIpAliases " pulumi-lang-dotnet=" UseIpAliases " pulumi-lang-go=" useIpAliases " pulumi-lang-python=" use_ip_aliases " pulumi-lang-yaml=" useIpAliases " pulumi-lang-java=" useIpAliases "> use_ip_aliases </span>is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either<span pulumi-lang-nodejs=" clusterSecondaryRangeName " pulumi-lang-dotnet=" ClusterSecondaryRangeName " pulumi-lang-go=" clusterSecondaryRangeName " pulumi-lang-python=" cluster_secondary_range_name " pulumi-lang-yaml=" clusterSecondaryRangeName " pulumi-lang-java=" clusterSecondaryRangeName "> cluster_secondary_range_name </span>or<span pulumi-lang-nodejs=" clusterIpv4CidrBlock " pulumi-lang-dotnet=" ClusterIpv4CidrBlock " pulumi-lang-go=" clusterIpv4CidrBlock " pulumi-lang-python=" cluster_ipv4_cidr_block " pulumi-lang-yaml=" clusterIpv4CidrBlock " pulumi-lang-java=" clusterIpv4CidrBlock "> cluster_ipv4_cidr_block </span>but not both.
  final String clusterIpv4CidrBlock;

  /// The name of the cluster's secondary range used to allocate IP addresses to pods. Specify either<span pulumi-lang-nodejs=" clusterSecondaryRangeName " pulumi-lang-dotnet=" ClusterSecondaryRangeName " pulumi-lang-go=" clusterSecondaryRangeName " pulumi-lang-python=" cluster_secondary_range_name " pulumi-lang-yaml=" clusterSecondaryRangeName " pulumi-lang-java=" clusterSecondaryRangeName "> cluster_secondary_range_name </span>or<span pulumi-lang-nodejs=" clusterIpv4CidrBlock " pulumi-lang-dotnet=" ClusterIpv4CidrBlock " pulumi-lang-go=" clusterIpv4CidrBlock " pulumi-lang-python=" cluster_ipv4_cidr_block " pulumi-lang-yaml=" clusterIpv4CidrBlock " pulumi-lang-java=" clusterIpv4CidrBlock "> cluster_ipv4_cidr_block </span>but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when<span pulumi-lang-nodejs=" useIpAliases " pulumi-lang-dotnet=" UseIpAliases " pulumi-lang-go=" useIpAliases " pulumi-lang-python=" use_ip_aliases " pulumi-lang-yaml=" useIpAliases " pulumi-lang-java=" useIpAliases "> use_ip_aliases </span>is true.
  final String clusterSecondaryRangeName;

  /// The IP address range used to allocate IP addresses in this cluster. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when<span pulumi-lang-nodejs=" useIpAliases " pulumi-lang-dotnet=" UseIpAliases " pulumi-lang-go=" useIpAliases " pulumi-lang-python=" use_ip_aliases " pulumi-lang-yaml=" useIpAliases " pulumi-lang-java=" useIpAliases "> use_ip_aliases </span>is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. /14) to have GKE choose a range with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. Specify either<span pulumi-lang-nodejs=" servicesSecondaryRangeName " pulumi-lang-dotnet=" ServicesSecondaryRangeName " pulumi-lang-go=" servicesSecondaryRangeName " pulumi-lang-python=" services_secondary_range_name " pulumi-lang-yaml=" servicesSecondaryRangeName " pulumi-lang-java=" servicesSecondaryRangeName "> services_secondary_range_name </span>or<span pulumi-lang-nodejs=" servicesIpv4CidrBlock " pulumi-lang-dotnet=" ServicesIpv4CidrBlock " pulumi-lang-go=" servicesIpv4CidrBlock " pulumi-lang-python=" services_ipv4_cidr_block " pulumi-lang-yaml=" servicesIpv4CidrBlock " pulumi-lang-java=" servicesIpv4CidrBlock "> services_ipv4_cidr_block </span>but not both.
  final String servicesIpv4CidrBlock;

  /// The name of the services' secondary range used to allocate IP addresses to the cluster. Specify either<span pulumi-lang-nodejs=" servicesSecondaryRangeName " pulumi-lang-dotnet=" ServicesSecondaryRangeName " pulumi-lang-go=" servicesSecondaryRangeName " pulumi-lang-python=" services_secondary_range_name " pulumi-lang-yaml=" servicesSecondaryRangeName " pulumi-lang-java=" servicesSecondaryRangeName "> services_secondary_range_name </span>or<span pulumi-lang-nodejs=" servicesIpv4CidrBlock " pulumi-lang-dotnet=" ServicesIpv4CidrBlock " pulumi-lang-go=" servicesIpv4CidrBlock " pulumi-lang-python=" services_ipv4_cidr_block " pulumi-lang-yaml=" servicesIpv4CidrBlock " pulumi-lang-java=" servicesIpv4CidrBlock "> services_ipv4_cidr_block </span>but not both. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when<span pulumi-lang-nodejs=" useIpAliases " pulumi-lang-dotnet=" UseIpAliases " pulumi-lang-go=" useIpAliases " pulumi-lang-python=" use_ip_aliases " pulumi-lang-yaml=" useIpAliases " pulumi-lang-java=" useIpAliases "> use_ip_aliases </span>is true.
  final String servicesSecondaryRangeName;

  /// Whether or not to enable Alias IPs in the GKE cluster. If true, a VPC-native cluster is created. Defaults to true if the<span pulumi-lang-nodejs=" ipAllocationPolicy " pulumi-lang-dotnet=" IpAllocationPolicy " pulumi-lang-go=" ipAllocationPolicy " pulumi-lang-python=" ip_allocation_policy " pulumi-lang-yaml=" ipAllocationPolicy " pulumi-lang-java=" ipAllocationPolicy "> ip_allocation_policy </span>block is present in config. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  final bool useIpAliases;

  GetEnvironmentConfigNodeConfigIpAllocationPolicy({
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

  factory GetEnvironmentConfigNodeConfigIpAllocationPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigNodeConfigIpAllocationPolicy(
      clusterIpv4CidrBlock: map['clusterIpv4CidrBlock'] as String,
      clusterSecondaryRangeName: map['clusterSecondaryRangeName'] as String,
      servicesIpv4CidrBlock: map['servicesIpv4CidrBlock'] as String,
      servicesSecondaryRangeName: map['servicesSecondaryRangeName'] as String,
      useIpAliases: map['useIpAliases'] as bool,
    );
  }
}
