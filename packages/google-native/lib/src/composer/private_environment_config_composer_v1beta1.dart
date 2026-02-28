// ignore_for_file: unused_element, unnecessary_cast

import 'networking_config_composer_v1beta1.dart';
import 'private_cluster_config_composer_v1beta1.dart';

/// The configuration information for configuring a Private IP Cloud Composer environment.
class PrivateEnvironmentConfigComposerV1beta1 {
  /// Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  final String? cloudComposerConnectionSubnetwork;

  /// Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String? cloudComposerNetworkIpv4CidrBlock;

  /// Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  final String? cloudSqlIpv4CidrBlock;

  /// Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final bool? enablePrivateEnvironment;

  /// Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  final bool? enablePrivatelyUsedPublicIps;

  /// Optional. Configuration for the network connections configuration in the environment.
  final NetworkingConfigComposerV1beta1? networkingConfig;

  /// Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  final PrivateClusterConfigComposerV1beta1? privateClusterConfig;

  /// Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String? webServerIpv4CidrBlock;

  /// Creates a new [PrivateEnvironmentConfigComposerV1beta1].
  /// [cloudComposerConnectionSubnetwork] Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
  /// [cloudComposerNetworkIpv4CidrBlock] Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [cloudSqlIpv4CidrBlock] Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block
  /// [enablePrivateEnvironment] Optional. If `true`, a Private IP Cloud Composer environment is created. If this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivatelyUsedPublicIps] Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for `IPAllocationPolicy.cluster_ipv4_cidr_block` and `IPAllocationPolicy.service_ipv4_cidr_block`.
  /// [networkingConfig] Optional. Configuration for the network connections configuration in the environment.
  /// [privateClusterConfig] Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
  /// [webServerIpv4CidrBlock] Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  PrivateEnvironmentConfigComposerV1beta1({
    this.cloudComposerConnectionSubnetwork,
    this.cloudComposerNetworkIpv4CidrBlock,
    this.cloudSqlIpv4CidrBlock,
    this.enablePrivateEnvironment,
    this.enablePrivatelyUsedPublicIps,
    this.networkingConfig,
    this.privateClusterConfig,
    this.webServerIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudComposerConnectionSubnetworkValue =
        cloudComposerConnectionSubnetwork;
    if (cloudComposerConnectionSubnetworkValue != null) {
      map['cloudComposerConnectionSubnetwork'] =
          cloudComposerConnectionSubnetworkValue;
    }
    final cloudComposerNetworkIpv4CidrBlockValue =
        cloudComposerNetworkIpv4CidrBlock;
    if (cloudComposerNetworkIpv4CidrBlockValue != null) {
      map['cloudComposerNetworkIpv4CidrBlock'] =
          cloudComposerNetworkIpv4CidrBlockValue;
    }
    final cloudSqlIpv4CidrBlockValue = cloudSqlIpv4CidrBlock;
    if (cloudSqlIpv4CidrBlockValue != null) {
      map['cloudSqlIpv4CidrBlock'] = cloudSqlIpv4CidrBlockValue;
    }
    final enablePrivateEnvironmentValue = enablePrivateEnvironment;
    if (enablePrivateEnvironmentValue != null) {
      map['enablePrivateEnvironment'] = enablePrivateEnvironmentValue;
    }
    final enablePrivatelyUsedPublicIpsValue = enablePrivatelyUsedPublicIps;
    if (enablePrivatelyUsedPublicIpsValue != null) {
      map['enablePrivatelyUsedPublicIps'] = enablePrivatelyUsedPublicIpsValue;
    }
    final networkingConfigValue = networkingConfig;
    if (networkingConfigValue != null) {
      map['networkingConfig'] = networkingConfigValue.toMap();
    }
    final privateClusterConfigValue = privateClusterConfig;
    if (privateClusterConfigValue != null) {
      map['privateClusterConfig'] = privateClusterConfigValue.toMap();
    }
    final webServerIpv4CidrBlockValue = webServerIpv4CidrBlock;
    if (webServerIpv4CidrBlockValue != null) {
      map['webServerIpv4CidrBlock'] = webServerIpv4CidrBlockValue;
    }
    return map;
  }

  factory PrivateEnvironmentConfigComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PrivateEnvironmentConfigComposerV1beta1(
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
      enablePrivateEnvironment: map['enablePrivateEnvironment'] == null
          ? null
          : map['enablePrivateEnvironment'] as bool,
      enablePrivatelyUsedPublicIps: map['enablePrivatelyUsedPublicIps'] == null
          ? null
          : map['enablePrivatelyUsedPublicIps'] as bool,
      networkingConfig: map['networkingConfig'] == null
          ? null
          : NetworkingConfigComposerV1beta1.fromMap(
              (map['networkingConfig'] as Map).cast<String, dynamic>()),
      privateClusterConfig: map['privateClusterConfig'] == null
          ? null
          : PrivateClusterConfigComposerV1beta1.fromMap(
              (map['privateClusterConfig'] as Map).cast<String, dynamic>()),
      webServerIpv4CidrBlock: map['webServerIpv4CidrBlock'] == null
          ? null
          : map['webServerIpv4CidrBlock'] as String,
    );
  }
}
