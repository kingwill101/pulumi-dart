// ignore_for_file: unused_element, unnecessary_cast

import 'networking_config_response_composer_v1beta1.dart';
import 'private_cluster_config_response_composer_v1beta1.dart';

/// The configuration information for configuring a Private IP Cloud Composer environment.
class PrivateEnvironmentConfigResponseComposerV1beta1 {
  /// Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  final String cloudComposerConnectionSubnetwork;

  /// Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String cloudComposerNetworkIpv4CidrBlock;

  /// The IP range reserved for the tenant project's Cloud Composer network. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String cloudComposerNetworkIpv4ReservedRange;

  /// Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  final String cloudSqlIpv4CidrBlock;

  /// Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final bool enablePrivateEnvironment;

  /// Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  final bool enablePrivatelyUsedPublicIps;

  /// Optional. Configuration for the network connections configuration in the environment.
  final NetworkingConfigResponseComposerV1beta1 networkingConfig;

  /// Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  final PrivateClusterConfigResponseComposerV1beta1 privateClusterConfig;

  /// Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String webServerIpv4CidrBlock;

  /// The IP range reserved for the tenant project's App Engine VMs. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String webServerIpv4ReservedRange;

  PrivateEnvironmentConfigResponseComposerV1beta1({
    required this.cloudComposerConnectionSubnetwork,
    required this.cloudComposerNetworkIpv4CidrBlock,
    required this.cloudComposerNetworkIpv4ReservedRange,
    required this.cloudSqlIpv4CidrBlock,
    required this.enablePrivateEnvironment,
    required this.enablePrivatelyUsedPublicIps,
    required this.networkingConfig,
    required this.privateClusterConfig,
    required this.webServerIpv4CidrBlock,
    required this.webServerIpv4ReservedRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudComposerConnectionSubnetwork'] =
        cloudComposerConnectionSubnetwork;
    map['cloudComposerNetworkIpv4CidrBlock'] =
        cloudComposerNetworkIpv4CidrBlock;
    map['cloudComposerNetworkIpv4ReservedRange'] =
        cloudComposerNetworkIpv4ReservedRange;
    map['cloudSqlIpv4CidrBlock'] = cloudSqlIpv4CidrBlock;
    map['enablePrivateEnvironment'] = enablePrivateEnvironment;
    map['enablePrivatelyUsedPublicIps'] = enablePrivatelyUsedPublicIps;
    map['networkingConfig'] = networkingConfig.toMap();
    map['privateClusterConfig'] = privateClusterConfig.toMap();
    map['webServerIpv4CidrBlock'] = webServerIpv4CidrBlock;
    map['webServerIpv4ReservedRange'] = webServerIpv4ReservedRange;
    return map;
  }

  factory PrivateEnvironmentConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PrivateEnvironmentConfigResponseComposerV1beta1(
      cloudComposerConnectionSubnetwork:
          map['cloudComposerConnectionSubnetwork'] as String,
      cloudComposerNetworkIpv4CidrBlock:
          map['cloudComposerNetworkIpv4CidrBlock'] as String,
      cloudComposerNetworkIpv4ReservedRange:
          map['cloudComposerNetworkIpv4ReservedRange'] as String,
      cloudSqlIpv4CidrBlock: map['cloudSqlIpv4CidrBlock'] as String,
      enablePrivateEnvironment: map['enablePrivateEnvironment'] as bool,
      enablePrivatelyUsedPublicIps: map['enablePrivatelyUsedPublicIps'] as bool,
      networkingConfig: NetworkingConfigResponseComposerV1beta1.fromMap(
          (map['networkingConfig'] as Map).cast<String, dynamic>()),
      privateClusterConfig: PrivateClusterConfigResponseComposerV1beta1.fromMap(
          (map['privateClusterConfig'] as Map).cast<String, dynamic>()),
      webServerIpv4CidrBlock: map['webServerIpv4CidrBlock'] as String,
      webServerIpv4ReservedRange: map['webServerIpv4ReservedRange'] as String,
    );
  }
}
