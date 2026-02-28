// ignore_for_file: unused_element, unnecessary_cast

import 'environment_config_node_config_ip_allocation_policy.dart';

class EnvironmentConfigNodeConfig {
  /// IPv4 cidr range that will be used by Composer internal components.
  final String? composerInternalIpv4CidrBlock;

  /// PSC (Private Service Connect) Network entry point. Customers can pre-create the Network Attachment and point Cloud Composer environment to use. It is possible to share network attachment among many environments, provided enough IP addresses are available.
  final String? composerNetworkAttachment;

  /// The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final int? diskSizeGb;

  /// Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
  final bool? enableIpMasqAgent;

  /// Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated.
  final EnvironmentConfigNodeConfigIpAllocationPolicy? ipAllocationPolicy;

  /// The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String? machineType;

  /// The maximum pods per node in the GKE cluster allocated during environment creation. Lowering this value reduces IP address consumption by the Cloud Composer Kubernetes cluster. This value can only be set during environment creation, and only if the environment is VPC-Native. The range of possible values is 8-110, and the default is 32. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final int? maxPodsPerNode;

  /// The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. The network must belong to the environment's project. If unspecified, the "default" network ID in the environment's project is used. If a Custom Subnet Network is provided, subnetwork must also be provided.
  final String? network;

  /// The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to ["https://www.googleapis.com/auth/cloud-platform"]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final List<String>? oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the "default" Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment.
  final String? serviceAccount;

  /// The Compute Engine subnetwork to be used for machine communications, specified as a self-link, relative resource name (e.g. "projects/{project}/regions/{region}/subnetworks/{subnetwork}"), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment's project and region.
  final String? subnetwork;

  /// The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated.
  final List<String>? tags;

  /// The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. "projects/{project}/zones/{zone}"). Must belong to the enclosing environment's project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String? zone;

  /// Creates a new [EnvironmentConfigNodeConfig].
  /// [composerInternalIpv4CidrBlock] IPv4 cidr range that will be used by Composer internal components.
  /// [composerNetworkAttachment] PSC (Private Service Connect) Network entry point. Customers can pre-create the Network Attachment and point Cloud Composer environment to use. It is possible to share network attachment among many environments, provided enough IP addresses are available.
  /// [diskSizeGb] The disk size in GB used for node VMs. Minimum size is 20GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enableIpMasqAgent] Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
  /// [ipAllocationPolicy] Configuration for controlling how IPs are allocated in the GKE cluster. Cannot be updated.
  /// [machineType] The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [maxPodsPerNode] The maximum pods per node in the GKE cluster allocated during environment creation. Lowering this value reduces IP address consumption by the Cloud Composer Kubernetes cluster. This value can only be set during environment creation, and only if the environment is VPC-Native. The range of possible values is 8-110, and the default is 32. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [network] The Compute Engine machine type used for cluster instances, specified as a name or relative resource name. For example: "projects/{project}/zones/{zone}/machineTypes/{machineType}". Must belong to the enclosing environment's project and region/zone. The network must belong to the environment's project. If unspecified, the "default" network ID in the environment's project is used. If a Custom Subnet Network is provided, subnetwork must also be provided.
  /// [oauthScopes] The set of Google API scopes to be made available on all node VMs. Cannot be updated. If empty, defaults to ["https://www.googleapis.com/auth/cloud-platform"]. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the "default" Compute Engine service account is used. Cannot be updated. If given, note that the service account must have roles/composer.worker for any GCP resources created under the Cloud Composer Environment.
  /// [subnetwork] The Compute Engine subnetwork to be used for machine communications, specified as a self-link, relative resource name (e.g. "projects/{project}/regions/{region}/subnetworks/{subnetwork}"), or by name. If subnetwork is provided, network must also be provided and the subnetwork must belong to the enclosing environment's project and region.
  /// [tags] The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with RFC1035. Cannot be updated.
  /// [zone] The Compute Engine zone in which to deploy the VMs running the Apache Airflow software, specified as the zone name or relative resource name (e.g. "projects/{project}/zones/{zone}"). Must belong to the enclosing environment's project and region. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  EnvironmentConfigNodeConfig({
    this.composerInternalIpv4CidrBlock,
    this.composerNetworkAttachment,
    this.diskSizeGb,
    this.enableIpMasqAgent,
    this.ipAllocationPolicy,
    this.machineType,
    this.maxPodsPerNode,
    this.network,
    this.oauthScopes,
    this.serviceAccount,
    this.subnetwork,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final composerInternalIpv4CidrBlockValue = composerInternalIpv4CidrBlock;
    if (composerInternalIpv4CidrBlockValue != null) {
      map['composerInternalIpv4CidrBlock'] = composerInternalIpv4CidrBlockValue;
    }
    final composerNetworkAttachmentValue = composerNetworkAttachment;
    if (composerNetworkAttachmentValue != null) {
      map['composerNetworkAttachment'] = composerNetworkAttachmentValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final enableIpMasqAgentValue = enableIpMasqAgent;
    if (enableIpMasqAgentValue != null) {
      map['enableIpMasqAgent'] = enableIpMasqAgentValue;
    }
    final ipAllocationPolicyValue = ipAllocationPolicy;
    if (ipAllocationPolicyValue != null) {
      map['ipAllocationPolicy'] = ipAllocationPolicyValue.toMap();
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final oauthScopesValue = oauthScopes;
    if (oauthScopesValue != null) {
      map['oauthScopes'] = oauthScopesValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory EnvironmentConfigNodeConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigNodeConfig(
      composerInternalIpv4CidrBlock:
          map['composerInternalIpv4CidrBlock'] == null
              ? null
              : map['composerInternalIpv4CidrBlock'] as String,
      composerNetworkAttachment: map['composerNetworkAttachment'] == null
          ? null
          : map['composerNetworkAttachment'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      enableIpMasqAgent: map['enableIpMasqAgent'] == null
          ? null
          : map['enableIpMasqAgent'] as bool,
      ipAllocationPolicy: map['ipAllocationPolicy'] == null
          ? null
          : EnvironmentConfigNodeConfigIpAllocationPolicy.fromMap(
              (map['ipAllocationPolicy'] as Map).cast<String, dynamic>()),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      maxPodsPerNode:
          map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
      network: map['network'] == null ? null : map['network'] as String,
      oauthScopes: map['oauthScopes'] == null
          ? null
          : (map['oauthScopes'] as List).cast<String>(),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
