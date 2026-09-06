// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_gateway_profile.dart';
import 'agent_pool_network_profile.dart';
import 'agent_pool_security_profile.dart';
import 'agent_pool_upgrade_settings.dart';
import 'agent_pool_windows_profile.dart';
import 'creation_data.dart';
import 'gpuprofile.dart';
import 'kubelet_config.dart';
import 'linux_osconfig.dart';
import 'local_dnsprofile.dart';
import 'power_state.dart';
import 'virtual_machine_nodes.dart';
import 'virtual_machines_profile.dart';

/// Profile for the container service agent pool.
class ManagedClusterAgentPoolProfile {
  /// The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  final pulumi.Input<List<String>?>? availabilityZones;
  /// AKS will associate the specified agent pool with the Capacity Reservation Group.
  final pulumi.Input<String?>? capacityReservationGroupID;
  /// Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  final pulumi.Input<int?>? count;
  /// CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  final pulumi.Input<CreationData?>? creationData;
  /// Whether to enable auto-scaler
  final pulumi.Input<bool?>? enableAutoScaling;
  /// Whether to enable host based OS and data drive encryption. This is only supported on certain VM sizes and in certain Azure regions. For more information, see: https://docs.microsoft.com/azure/aks/enable-host-encryption
  final pulumi.Input<bool?>? enableEncryptionAtHost;
  /// Whether to use a FIPS-enabled OS. See [Add a FIPS-enabled node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview) for more details.
  final pulumi.Input<bool?>? enableFIPS;
  /// Whether each node is allocated its own public IP. Some scenarios may require nodes in a node pool to receive their own dedicated public IP addresses. A common scenario is for gaming workloads, where a console needs to make a direct connection to a cloud virtual machine to minimize hops. For more information see [assigning a public IP per node](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#assign-a-public-ip-per-node-for-your-node-pools). The default is false.
  final pulumi.Input<bool?>? enableNodePublicIP;
  /// Whether to enable UltraSSD
  final pulumi.Input<bool?>? enableUltraSSD;
  /// Profile specific to a managed agent pool in Gateway mode. This field cannot be set if agent pool mode is not Gateway.
  final pulumi.Input<AgentPoolGatewayProfile?>? gatewayProfile;
  /// GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
  final pulumi.Input<dynamic>? gpuInstanceProfile;
  /// GPU settings for the Agent Pool.
  final pulumi.Input<GPUProfile?>? gpuProfile;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts).
  final pulumi.Input<String?>? hostGroupID;
  /// The Kubelet configuration on the agent pool nodes.
  final pulumi.Input<KubeletConfig?>? kubeletConfig;
  /// Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  final pulumi.Input<dynamic>? kubeletDiskType;
  /// The OS configuration of Linux agent nodes.
  final pulumi.Input<LinuxOSConfig?>? linuxOSConfig;
  /// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  final pulumi.Input<LocalDNSProfile?>? localDNSProfile;
  /// The maximum number of nodes for auto-scaling
  final pulumi.Input<int?>? maxCount;
  /// The maximum number of pods that can run on a node.
  final pulumi.Input<int?>? maxPods;
  /// Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script).
  final pulumi.Input<String?>? messageOfTheDay;
  /// The minimum number of nodes for auto-scaling
  final pulumi.Input<int?>? minCount;
  /// The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
  final pulumi.Input<dynamic>? mode;
  /// Unique name of the agent pool profile in the context of the subscription and resource group. Windows agent pool names must be 6 characters or less.
  final pulumi.Input<String> name;
  /// Network-related settings of an agent pool.
  final pulumi.Input<AgentPoolNetworkProfile?>? networkProfile;
  /// The node labels to be persisted across all nodes in agent pool.
  final pulumi.Input<Map<String, String>?>? nodeLabels;
  /// The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName}
  final pulumi.Input<String?>? nodePublicIPPrefixID;
  /// The taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final pulumi.Input<List<String>?>? nodeTaints;
  /// The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool).
  final pulumi.Input<String?>? orchestratorVersion;
  /// OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.
  final pulumi.Input<int?>? osDiskSizeGB;
  /// The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
  final pulumi.Input<dynamic>? osDiskType;
  /// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes &lt;= 1.24 or Windows2022 when Kubernetes &gt;= 1.25 if OSType is Windows.
  final pulumi.Input<dynamic>? osSKU;
  /// The operating system type. The default is Linux.
  final pulumi.Input<dynamic>? osType;
  /// Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
  final pulumi.Input<dynamic>? podIPAllocationMode;
  /// The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final pulumi.Input<String?>? podSubnetID;
  /// Whether the Agent Pool is running or stopped. When an Agent Pool is first created it is initially Running. The Agent Pool can be stopped by setting this field to Stopped. A stopped Agent Pool stops all of its VMs and does not accrue billing charges. An Agent Pool can only be stopped if it is Running and provisioning state is Succeeded
  final pulumi.Input<PowerState?>? powerState;
  /// The ID for Proximity Placement Group.
  final pulumi.Input<String?>? proximityPlacementGroupID;
  /// The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  final pulumi.Input<dynamic>? scaleDownMode;
  /// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  final pulumi.Input<dynamic>? scaleSetEvictionPolicy;
  /// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  final pulumi.Input<dynamic>? scaleSetPriority;
  /// The security settings of an agent pool.
  final pulumi.Input<AgentPoolSecurityProfile?>? securityProfile;
  /// The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  final pulumi.Input<double?>? spotMaxPrice;
  /// The tags to be persisted on the agent pool virtual machine scale set.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The type of Agent Pool.
  final pulumi.Input<dynamic>? type;
  /// Settings for upgrading the agentpool
  final pulumi.Input<AgentPoolUpgradeSettings?>? upgradeSettings;
  /// The status of nodes in a VirtualMachines agent pool.
  final pulumi.Input<List<VirtualMachineNodes>?>? virtualMachineNodesStatus;
  /// Specifications on VirtualMachines agent pool.
  final pulumi.Input<VirtualMachinesProfile?>? virtualMachinesProfile;
  /// The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  final pulumi.Input<String?>? vmSize;
  /// The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final pulumi.Input<String?>? vnetSubnetID;
  /// The Windows agent pool's specific profile.
  final pulumi.Input<AgentPoolWindowsProfile?>? windowsProfile;
  /// Determines the type of workload a node can run.
  final pulumi.Input<dynamic>? workloadRuntime;

  /// Creates a new [ManagedClusterAgentPoolProfile].
  /// [availabilityZones] The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  /// [capacityReservationGroupID] AKS will associate the specified agent pool with the Capacity Reservation Group.
  /// [count] Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  /// [creationData] CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  /// [enableAutoScaling] Whether to enable auto-scaler
  /// [enableEncryptionAtHost] Whether to enable host based OS and data drive encryption. This is only supported on certain VM sizes and in certain Azure regions. For more information, see: https://docs.microsoft.com/azure/aks/enable-host-encryption
  /// [enableFIPS] Whether to use a FIPS-enabled OS. See [Add a FIPS-enabled node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview) for more details.
  /// [enableNodePublicIP] Whether each node is allocated its own public IP. Some scenarios may require nodes in a node pool to receive their own dedicated public IP addresses. A common scenario is for gaming workloads, where a console needs to make a direct connection to a cloud virtual machine to minimize hops. For more information see [assigning a public IP per node](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#assign-a-public-ip-per-node-for-your-node-pools). The default is false.
  /// [enableUltraSSD] Whether to enable UltraSSD
  /// [gatewayProfile] Profile specific to a managed agent pool in Gateway mode. This field cannot be set if agent pool mode is not Gateway.
  /// [gpuInstanceProfile] GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
  /// [gpuProfile] GPU settings for the Agent Pool.
  /// [hostGroupID] The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts).
  /// [kubeletConfig] The Kubelet configuration on the agent pool nodes.
  /// [kubeletDiskType] Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  /// [linuxOSConfig] The OS configuration of Linux agent nodes.
  /// [localDNSProfile] Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  /// [maxCount] The maximum number of nodes for auto-scaling
  /// [maxPods] The maximum number of pods that can run on a node.
  /// [messageOfTheDay] Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script).
  /// [minCount] The minimum number of nodes for auto-scaling
  /// [mode] The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
  /// [name] Unique name of the agent pool profile in the context of the subscription and resource group. Windows agent pool names must be 6 characters or less.
  /// [networkProfile] Network-related settings of an agent pool.
  /// [nodeLabels] The node labels to be persisted across all nodes in agent pool.
  /// [nodePublicIPPrefixID] The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName}
  /// [nodeTaints] The taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  /// [orchestratorVersion] The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool).
  /// [osDiskSizeGB] OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.
  /// [osDiskType] The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
  /// [osSKU] Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes &lt;= 1.24 or Windows2022 when Kubernetes &gt;= 1.25 if OSType is Windows.
  /// [osType] The operating system type. The default is Linux.
  /// [podIPAllocationMode] Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
  /// [podSubnetID] The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  /// [powerState] Whether the Agent Pool is running or stopped. When an Agent Pool is first created it is initially Running. The Agent Pool can be stopped by setting this field to Stopped. A stopped Agent Pool stops all of its VMs and does not accrue billing charges. An Agent Pool can only be stopped if it is Running and provisioning state is Succeeded
  /// [proximityPlacementGroupID] The ID for Proximity Placement Group.
  /// [scaleDownMode] The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  /// [scaleSetEvictionPolicy] The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  /// [scaleSetPriority] The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  /// [securityProfile] The security settings of an agent pool.
  /// [spotMaxPrice] The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  /// [tags] The tags to be persisted on the agent pool virtual machine scale set.
  /// [type] The type of Agent Pool.
  /// [upgradeSettings] Settings for upgrading the agentpool
  /// [virtualMachineNodesStatus] The status of nodes in a VirtualMachines agent pool.
  /// [virtualMachinesProfile] Specifications on VirtualMachines agent pool.
  /// [vmSize] The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  /// [vnetSubnetID] The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  /// [windowsProfile] The Windows agent pool's specific profile.
  /// [workloadRuntime] Determines the type of workload a node can run.
  const ManagedClusterAgentPoolProfile({
    this.availabilityZones,
    this.capacityReservationGroupID,
    this.count,
    this.creationData,
    this.enableAutoScaling,
    this.enableEncryptionAtHost,
    this.enableFIPS,
    this.enableNodePublicIP,
    this.enableUltraSSD,
    this.gatewayProfile,
    this.gpuInstanceProfile,
    this.gpuProfile,
    this.hostGroupID,
    this.kubeletConfig,
    this.kubeletDiskType,
    this.linuxOSConfig,
    this.localDNSProfile,
    this.maxCount,
    this.maxPods,
    this.messageOfTheDay,
    this.minCount,
    this.mode,
    required this.name,
    this.networkProfile,
    this.nodeLabels,
    this.nodePublicIPPrefixID,
    this.nodeTaints,
    this.orchestratorVersion,
    this.osDiskSizeGB,
    this.osDiskType,
    this.osSKU,
    this.osType,
    this.podIPAllocationMode,
    this.podSubnetID,
    this.powerState,
    this.proximityPlacementGroupID,
    this.scaleDownMode,
    this.scaleSetEvictionPolicy,
    this.scaleSetPriority,
    this.securityProfile,
    this.spotMaxPrice,
    this.tags,
    this.type,
    this.upgradeSettings,
    this.virtualMachineNodesStatus,
    this.virtualMachinesProfile,
    this.vmSize,
    this.vnetSubnetID,
    this.windowsProfile,
    this.workloadRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'capacityReservationGroupID': ?capacityReservationGroupID,
      'count': ?count,
      'creationData': ?pulumi.Input.mapOptionalInputValue<CreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'enableAutoScaling': ?enableAutoScaling,
      'enableEncryptionAtHost': ?enableEncryptionAtHost,
      'enableFIPS': ?enableFIPS,
      'enableNodePublicIP': ?enableNodePublicIP,
      'enableUltraSSD': ?enableUltraSSD,
      'gatewayProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolGatewayProfile, Map<String, dynamic>>(gatewayProfile, (value) => value.toMap()),
      'gpuInstanceProfile': ?gpuInstanceProfile,
      'gpuProfile': ?pulumi.Input.mapOptionalInputValue<GPUProfile, Map<String, dynamic>>(gpuProfile, (value) => value.toMap()),
      'hostGroupID': ?hostGroupID,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<KubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'kubeletDiskType': ?kubeletDiskType,
      'linuxOSConfig': ?pulumi.Input.mapOptionalInputValue<LinuxOSConfig, Map<String, dynamic>>(linuxOSConfig, (value) => value.toMap()),
      'localDNSProfile': ?pulumi.Input.mapOptionalInputValue<LocalDNSProfile, Map<String, dynamic>>(localDNSProfile, (value) => value.toMap()),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'messageOfTheDay': ?messageOfTheDay,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'nodeLabels': ?nodeLabels,
      'nodePublicIPPrefixID': ?nodePublicIPPrefixID,
      'nodeTaints': ?nodeTaints,
      'orchestratorVersion': ?orchestratorVersion,
      'osDiskSizeGB': ?osDiskSizeGB,
      'osDiskType': ?osDiskType,
      'osSKU': ?osSKU,
      'osType': ?osType,
      'podIPAllocationMode': ?podIPAllocationMode,
      'podSubnetID': ?podSubnetID,
      'powerState': ?pulumi.Input.mapOptionalInputValue<PowerState, Map<String, dynamic>>(powerState, (value) => value.toMap()),
      'proximityPlacementGroupID': ?proximityPlacementGroupID,
      'scaleDownMode': ?scaleDownMode,
      'scaleSetEvictionPolicy': ?scaleSetEvictionPolicy,
      'scaleSetPriority': ?scaleSetPriority,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'spotMaxPrice': ?spotMaxPrice,
      'tags': ?tags,
      'type': ?type,
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<AgentPoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'virtualMachineNodesStatus': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineNodes>, List<Map<String, dynamic>>>(virtualMachineNodesStatus, (value) => pulumi.Input.encodeList<VirtualMachineNodes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualMachinesProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinesProfile, Map<String, dynamic>>(virtualMachinesProfile, (value) => value.toMap()),
      'vmSize': ?vmSize,
      'vnetSubnetID': ?vnetSubnetID,
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolWindowsProfile, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
      'workloadRuntime': ?workloadRuntime,
    };
  }

  factory ManagedClusterAgentPoolProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAgentPoolProfile(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capacityReservationGroupID: (() { final guardedValue = map['capacityReservationGroupID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAutoScaling: (() { final guardedValue = map['enableAutoScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableEncryptionAtHost: (() { final guardedValue = map['enableEncryptionAtHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFIPS: (() { final guardedValue = map['enableFIPS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNodePublicIP: (() { final guardedValue = map['enableNodePublicIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableUltraSSD: (() { final guardedValue = map['enableUltraSSD']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayProfile: (() { final guardedValue = map['gatewayProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolGatewayProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gpuInstanceProfile: (() { final guardedValue = map['gpuInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      gpuProfile: (() { final guardedValue = map['gpuProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GPUProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostGroupID: (() { final guardedValue = map['hostGroupID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeletDiskType: (() { final guardedValue = map['kubeletDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linuxOSConfig: (() { final guardedValue = map['linuxOSConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxOSConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localDNSProfile: (() { final guardedValue = map['localDNSProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalDNSProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      messageOfTheDay: (() { final guardedValue = map['messageOfTheDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeLabels: (() { final guardedValue = map['nodeLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodePublicIPPrefixID: (() { final guardedValue = map['nodePublicIPPrefixID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTaints: (() { final guardedValue = map['nodeTaints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orchestratorVersion: (() { final guardedValue = map['orchestratorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDiskSizeGB: (() { final guardedValue = map['osDiskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      osDiskType: (() { final guardedValue = map['osDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      osSKU: (() { final guardedValue = map['osSKU']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      podIPAllocationMode: (() { final guardedValue = map['podIPAllocationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      podSubnetID: (() { final guardedValue = map['podSubnetID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PowerState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proximityPlacementGroupID: (() { final guardedValue = map['proximityPlacementGroupID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownMode: (() { final guardedValue = map['scaleDownMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scaleSetEvictionPolicy: (() { final guardedValue = map['scaleSetEvictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scaleSetPriority: (() { final guardedValue = map['scaleSetPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spotMaxPrice: (() { final guardedValue = map['spotMaxPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachineNodesStatus: (() { final guardedValue = map['virtualMachineNodesStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineNodes>(guardedValue, (value) => VirtualMachineNodes.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualMachinesProfile: (() { final guardedValue = map['virtualMachinesProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinesProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetSubnetID: (() { final guardedValue = map['vnetSubnetID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowsProfile: (() { final guardedValue = map['windowsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPoolWindowsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadRuntime: (() { final guardedValue = map['workloadRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
