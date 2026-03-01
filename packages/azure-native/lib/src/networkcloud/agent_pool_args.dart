// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration.dart';
import 'agent_options.dart';
import 'agent_pool_upgrade_settings.dart';
import 'attached_network_configuration.dart';
import 'extended_location.dart';
import 'kubernetes_label.dart';

/// {@template pulumi_networkcloud_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_agent_pool_args_doc}
class AgentPoolArgs {
  /// The administrator credentials to be used for the nodes in this agent pool.
  final pulumi.Input<AdministratorConfiguration>? administratorConfiguration;
  /// The configurations that will be applied to each agent in this agent pool.
  final pulumi.Input<AgentOptions>? agentOptions;
  /// The name of the Kubernetes cluster agent pool.
  final pulumi.Input<String>? agentPoolName;
  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  final pulumi.Input<AttachedNetworkConfiguration>? attachedNetworkConfiguration;
  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  final pulumi.Input<List<String>>? availabilityZones;
  /// The number of virtual machines that use this configuration.
  final pulumi.Input<double> count;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String> kubernetesClusterName;
  /// The labels applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>>? labels;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  final pulumi.Input<String> mode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The taints applied to the nodes in this agent pool.
  final pulumi.Input<List<KubernetesLabel>>? taints;
  /// The configuration of the agent pool.
  final pulumi.Input<AgentPoolUpgradeSettings>? upgradeSettings;
  /// The name of the VM SKU that determines the size of resources allocated for node VMs.
  final pulumi.Input<String> vmSkuName;

  /// Creates a new [AgentPoolArgs].
  /// [administratorConfiguration] The administrator credentials to be used for the nodes in this agent pool.
  /// [agentOptions] The configurations that will be applied to each agent in this agent pool.
  /// [agentPoolName] The name of the Kubernetes cluster agent pool.
  /// [attachedNetworkConfiguration] The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  /// [availabilityZones] The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  /// [count] The number of virtual machines that use this configuration.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [labels] The labels applied to the nodes in this agent pool.
  /// [location] The geo-location where the resource lives
  /// [mode] The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [taints] The taints applied to the nodes in this agent pool.
  /// [upgradeSettings] The configuration of the agent pool.
  /// [vmSkuName] The name of the VM SKU that determines the size of resources allocated for node VMs.
  AgentPoolArgs({
    AdministratorConfiguration? administratorConfiguration,
    AgentOptions? agentOptions,
    String? agentPoolName,
    AttachedNetworkConfiguration? attachedNetworkConfiguration,
    List<String>? availabilityZones,
    required double count,
    ExtendedLocation? extendedLocation,
    required String kubernetesClusterName,
    List<KubernetesLabel>? labels,
    String? location,
    required String mode,
    required String resourceGroupName,
    Map<String, String>? tags,
    List<KubernetesLabel>? taints,
    AgentPoolUpgradeSettings? upgradeSettings,
    required String vmSkuName,
  }) :
      administratorConfiguration = pulumi.Input.asOptionalInput<AdministratorConfiguration>(administratorConfiguration),
      agentOptions = pulumi.Input.asOptionalInput<AgentOptions>(agentOptions),
      agentPoolName = pulumi.Input.asOptionalInput<String>(agentPoolName),
      attachedNetworkConfiguration = pulumi.Input.asOptionalInput<AttachedNetworkConfiguration>(attachedNetworkConfiguration),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      count = pulumi.Input.asInput<double>(count),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      kubernetesClusterName = pulumi.Input.asInput<String>(kubernetesClusterName),
      labels = pulumi.Input.asOptionalInput<List<KubernetesLabel>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mode = pulumi.Input.asInput<String>(mode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taints = pulumi.Input.asOptionalInput<List<KubernetesLabel>>(taints),
      upgradeSettings = pulumi.Input.asOptionalInput<AgentPoolUpgradeSettings>(upgradeSettings),
      vmSkuName = pulumi.Input.asInput<String>(vmSkuName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorConfiguration': ?pulumi.Input.mapOptionalInputValue<AdministratorConfiguration, Map<String, dynamic>>(administratorConfiguration, (value) => value.toMap()),
      'agentOptions': ?pulumi.Input.mapOptionalInputValue<AgentOptions, Map<String, dynamic>>(agentOptions, (value) => value.toMap()),
      'agentPoolName': ?agentPoolName,
      'attachedNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<AttachedNetworkConfiguration, Map<String, dynamic>>(attachedNetworkConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'count': count,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'kubernetesClusterName': kubernetesClusterName,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<KubernetesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'mode': mode,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<KubernetesLabel>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<KubernetesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<AgentPoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSkuName': vmSkuName,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      administratorConfiguration: map['administratorConfiguration'] == null ? null : AdministratorConfiguration.fromMap((map['administratorConfiguration'] as Map).cast<String, dynamic>()),
      agentOptions: map['agentOptions'] == null ? null : AgentOptions.fromMap((map['agentOptions'] as Map).cast<String, dynamic>()),
      agentPoolName: map['agentPoolName'] == null ? null : map['agentPoolName'] as String,
      attachedNetworkConfiguration: map['attachedNetworkConfiguration'] == null ? null : AttachedNetworkConfiguration.fromMap((map['attachedNetworkConfiguration'] as Map).cast<String, dynamic>()),
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      count: map['count'] as double,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      kubernetesClusterName: map['kubernetesClusterName'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<KubernetesLabel>(map['labels'], (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      mode: map['mode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<KubernetesLabel>(map['taints'], (value) => KubernetesLabel.fromMap((value as Map).cast<String, dynamic>())),
      upgradeSettings: map['upgradeSettings'] == null ? null : AgentPoolUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>()),
      vmSkuName: map['vmSkuName'] as String,
    );
  }
}

