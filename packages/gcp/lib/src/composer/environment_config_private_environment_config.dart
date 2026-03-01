// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigPrivateEnvironmentConfig {
  /// When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String? cloudComposerConnectionSubnetwork;

  /// The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String? cloudComposerNetworkIpv4CidrBlock;

  /// The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block.
  final String? cloudSqlIpv4CidrBlock;

  /// Mode of internal communication within the Composer environment. Must be one of "VPC_PEERING" or "PRIVATE_SERVICE_CONNECT".
  final String? connectionType;

  /// If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final bool? enablePrivateEndpoint;

  /// When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block.
  final bool? enablePrivatelyUsedPublicIps;

  /// The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network. If left blank, the default value of '172.16.0.0/28' is used.
  final String? masterIpv4CidrBlock;

  /// The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String? webServerIpv4CidrBlock;

  /// Creates a new [EnvironmentConfigPrivateEnvironmentConfig].
  /// [cloudComposerConnectionSubnetwork] When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudComposerNetworkIpv4CidrBlock] The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudSqlIpv4CidrBlock] The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block.
  /// [connectionType] Mode of internal communication within the Composer environment. Must be one of "VPC_PEERING" or "PRIVATE_SERVICE_CONNECT".
  /// [enablePrivateEndpoint] If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivatelyUsedPublicIps] When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block.
  /// [masterIpv4CidrBlock] The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network. If left blank, the default value of '172.16.0.0/28' is used.
  /// [webServerIpv4CidrBlock] The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  EnvironmentConfigPrivateEnvironmentConfig({
    this.cloudComposerConnectionSubnetwork,
    this.cloudComposerNetworkIpv4CidrBlock,
    this.cloudSqlIpv4CidrBlock,
    this.connectionType,
    this.enablePrivateEndpoint,
    this.enablePrivatelyUsedPublicIps,
    this.masterIpv4CidrBlock,
    this.webServerIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudComposerConnectionSubnetwork': ?cloudComposerConnectionSubnetwork,
      'cloudComposerNetworkIpv4CidrBlock': ?cloudComposerNetworkIpv4CidrBlock,
      'cloudSqlIpv4CidrBlock': ?cloudSqlIpv4CidrBlock,
      'connectionType': ?connectionType,
      'enablePrivateEndpoint': ?enablePrivateEndpoint,
      'enablePrivatelyUsedPublicIps': ?enablePrivatelyUsedPublicIps,
      'masterIpv4CidrBlock': ?masterIpv4CidrBlock,
      'webServerIpv4CidrBlock': ?webServerIpv4CidrBlock,
    };
  }

  factory EnvironmentConfigPrivateEnvironmentConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentConfigPrivateEnvironmentConfig(
      cloudComposerConnectionSubnetwork:
          map['cloudComposerConnectionSubnetwork'] == null
          ? null
          : map['cloudComposerConnectionSubnetwork'] as String,
      cloudComposerNetworkIpv4CidrBlock:
          map['cloudComposerNetworkIpv4CidrBlock'] == null
          ? null
          : map['cloudComposerNetworkIpv4CidrBlock'] as String,
      cloudSqlIpv4CidrBlock: map['cloudSqlIpv4CidrBlock'] == null
          ? null
          : map['cloudSqlIpv4CidrBlock'] as String,
      connectionType: map['connectionType'] == null
          ? null
          : map['connectionType'] as String,
      enablePrivateEndpoint: map['enablePrivateEndpoint'] == null
          ? null
          : map['enablePrivateEndpoint'] as bool,
      enablePrivatelyUsedPublicIps: map['enablePrivatelyUsedPublicIps'] == null
          ? null
          : map['enablePrivatelyUsedPublicIps'] as bool,
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] == null
          ? null
          : map['masterIpv4CidrBlock'] as String,
      webServerIpv4CidrBlock: map['webServerIpv4CidrBlock'] == null
          ? null
          : map['webServerIpv4CidrBlock'] as String,
    );
  }
}
