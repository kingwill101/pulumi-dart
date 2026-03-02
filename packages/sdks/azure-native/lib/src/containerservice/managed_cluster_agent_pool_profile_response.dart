// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_gateway_profile_response.dart';
import 'agent_pool_network_profile_response.dart';
import 'agent_pool_security_profile_response.dart';
import 'agent_pool_status_response.dart';
import 'agent_pool_upgrade_settings_response.dart';
import 'agent_pool_windows_profile_response.dart';
import 'creation_data_response.dart';
import 'gpuprofile_response.dart';
import 'kubelet_config_response.dart';
import 'linux_osconfig_response.dart';
import 'local_dnsprofile_response.dart';
import 'power_state_response.dart';
import 'virtual_machine_nodes_response.dart';
import 'virtual_machines_profile_response.dart';

/// Profile for the container service agent pool.
class ManagedClusterAgentPoolProfileResponse {
  /// The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  final pulumi.Input<List<String>>? availabilityZones;
  /// AKS will associate the specified agent pool with the Capacity Reservation Group.
  final pulumi.Input<String>? capacityReservationGroupID;
  /// Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  final pulumi.Input<int>? count;
  /// CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  final pulumi.Input<CreationDataResponse>? creationData;
  /// The version of Kubernetes the Agent Pool is running. If orchestratorVersion is a fully specified version <major.minor.patch>, this field will be exactly equal to it. If orchestratorVersion is <major.minor>, this field will contain the full <major.minor.patch> version being used.
  final pulumi.Input<String> currentOrchestratorVersion;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  final pulumi.Input<String> eTag;
  /// Whether to enable auto-scaler
  final pulumi.Input<bool>? enableAutoScaling;
  /// Whether to enable host based OS and data drive encryption. This is only supported on certain VM sizes and in certain Azure regions. For more information, see: https://docs.microsoft.com/azure/aks/enable-host-encryption
  final pulumi.Input<bool>? enableEncryptionAtHost;
  /// Whether to use a FIPS-enabled OS. See [Add a FIPS-enabled node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview) for more details.
  final pulumi.Input<bool>? enableFIPS;
  /// Whether each node is allocated its own public IP. Some scenarios may require nodes in a node pool to receive their own dedicated public IP addresses. A common scenario is for gaming workloads, where a console needs to make a direct connection to a cloud virtual machine to minimize hops. For more information see [assigning a public IP per node](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#assign-a-public-ip-per-node-for-your-node-pools). The default is false.
  final pulumi.Input<bool>? enableNodePublicIP;
  /// Whether to enable UltraSSD
  final pulumi.Input<bool>? enableUltraSSD;
  /// Profile specific to a managed agent pool in Gateway mode. This field cannot be set if agent pool mode is not Gateway.
  final pulumi.Input<AgentPoolGatewayProfileResponse>? gatewayProfile;
  /// GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
  final pulumi.Input<String>? gpuInstanceProfile;
  /// GPU settings for the Agent Pool.
  final pulumi.Input<GPUProfileResponse>? gpuProfile;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts).
  final pulumi.Input<String>? hostGroupID;
  /// The Kubelet configuration on the agent pool nodes.
  final pulumi.Input<KubeletConfigResponse>? kubeletConfig;
  /// Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  final pulumi.Input<String>? kubeletDiskType;
  /// The OS configuration of Linux agent nodes.
  final pulumi.Input<LinuxOSConfigResponse>? linuxOSConfig;
  /// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  final pulumi.Input<LocalDNSProfileResponse>? localDNSProfile;
  /// The maximum number of nodes for auto-scaling
  final pulumi.Input<int>? maxCount;
  /// The maximum number of pods that can run on a node.
  final pulumi.Input<int>? maxPods;
  /// Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script).
  final pulumi.Input<String>? messageOfTheDay;
  /// The minimum number of nodes for auto-scaling
  final pulumi.Input<int>? minCount;
  /// The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
  final pulumi.Input<String>? mode;
  /// Unique name of the agent pool profile in the context of the subscription and resource group. Windows agent pool names must be 6 characters or less.
  final pulumi.Input<String> name;
  /// Network-related settings of an agent pool.
  final pulumi.Input<AgentPoolNetworkProfileResponse>? networkProfile;
  /// The version of node image
  final pulumi.Input<String> nodeImageVersion;
  /// The node labels to be persisted across all nodes in agent pool.
  final pulumi.Input<Map<String, String>>? nodeLabels;
  /// The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName}
  final pulumi.Input<String>? nodePublicIPPrefixID;
  /// The taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final pulumi.Input<List<String>>? nodeTaints;
  /// The version of Kubernetes specified by the user. Both patch version <major.minor.patch> (e.g. 1.20.13) and <major.minor> (e.g. 1.20) are supported. When <major.minor> is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same <major.minor> once it has been created (e.g. 1.14.x -> 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool).
  final pulumi.Input<String>? orchestratorVersion;
  /// OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.
  final pulumi.Input<int>? osDiskSizeGB;
  /// The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
  final pulumi.Input<String>? osDiskType;
  /// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes <= 1.24 or Windows2022 when Kubernetes >= 1.25 if OSType is Windows.
  final pulumi.Input<String>? osSKU;
  /// The operating system type. The default is Linux.
  final pulumi.Input<String>? osType;
  /// Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
  final pulumi.Input<String>? podIPAllocationMode;
  /// The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final pulumi.Input<String>? podSubnetID;
  /// Whether the Agent Pool is running or stopped. When an Agent Pool is first created it is initially Running. The Agent Pool can be stopped by setting this field to Stopped. A stopped Agent Pool stops all of its VMs and does not accrue billing charges. An Agent Pool can only be stopped if it is Running and provisioning state is Succeeded
  final pulumi.Input<PowerStateResponse>? powerState;
  /// The current deployment or provisioning state.
  final pulumi.Input<String> provisioningState;
  /// The ID for Proximity Placement Group.
  final pulumi.Input<String>? proximityPlacementGroupID;
  /// The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  final pulumi.Input<String>? scaleDownMode;
  /// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  final pulumi.Input<String>? scaleSetEvictionPolicy;
  /// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  final pulumi.Input<String>? scaleSetPriority;
  /// The security settings of an agent pool.
  final pulumi.Input<AgentPoolSecurityProfileResponse>? securityProfile;
  /// The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  final pulumi.Input<double>? spotMaxPrice;
  /// Contains read-only information about the Agent Pool.
  final pulumi.Input<AgentPoolStatusResponse>? status;
  /// The tags to be persisted on the agent pool virtual machine scale set.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of Agent Pool.
  final pulumi.Input<String>? type;
  /// Settings for upgrading the agentpool
  final pulumi.Input<AgentPoolUpgradeSettingsResponse>? upgradeSettings;
  /// The status of nodes in a VirtualMachines agent pool.
  final pulumi.Input<List<VirtualMachineNodesResponse>>? virtualMachineNodesStatus;
  /// Specifications on VirtualMachines agent pool.
  final pulumi.Input<VirtualMachinesProfileResponse>? virtualMachinesProfile;
  /// The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  final pulumi.Input<String>? vmSize;
  /// The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final pulumi.Input<String>? vnetSubnetID;
  /// The Windows agent pool's specific profile.
  final pulumi.Input<AgentPoolWindowsProfileResponse>? windowsProfile;
  /// Determines the type of workload a node can run.
  final pulumi.Input<String>? workloadRuntime;

  /// Creates a new [ManagedClusterAgentPoolProfileResponse].
  /// [availabilityZones] The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  /// [capacityReservationGroupID] AKS will associate the specified agent pool with the Capacity Reservation Group.
  /// [count] Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  /// [creationData] CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  /// [currentOrchestratorVersion] The version of Kubernetes the Agent Pool is running. If orchestratorVersion is a fully specified version <major.minor.patch>, this field will be exactly equal to it. If orchestratorVersion is <major.minor>, this field will contain the full <major.minor.patch> version being used.
  /// [eTag] Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
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
  /// [nodeImageVersion] The version of node image
  /// [nodeLabels] The node labels to be persisted across all nodes in agent pool.
  /// [nodePublicIPPrefixID] The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName}
  /// [nodeTaints] The taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  /// [orchestratorVersion] The version of Kubernetes specified by the user. Both patch version <major.minor.patch> (e.g. 1.20.13) and <major.minor> (e.g. 1.20) are supported. When <major.minor> is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same <major.minor> once it has been created (e.g. 1.14.x -> 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool).
  /// [osDiskSizeGB] OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.
  /// [osDiskType] The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
  /// [osSKU] Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes <= 1.24 or Windows2022 when Kubernetes >= 1.25 if OSType is Windows.
  /// [osType] The operating system type. The default is Linux.
  /// [podIPAllocationMode] Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
  /// [podSubnetID] The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  /// [powerState] Whether the Agent Pool is running or stopped. When an Agent Pool is first created it is initially Running. The Agent Pool can be stopped by setting this field to Stopped. A stopped Agent Pool stops all of its VMs and does not accrue billing charges. An Agent Pool can only be stopped if it is Running and provisioning state is Succeeded
  /// [provisioningState] The current deployment or provisioning state.
  /// [proximityPlacementGroupID] The ID for Proximity Placement Group.
  /// [scaleDownMode] The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  /// [scaleSetEvictionPolicy] The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  /// [scaleSetPriority] The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  /// [securityProfile] The security settings of an agent pool.
  /// [spotMaxPrice] The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  /// [status] Contains read-only information about the Agent Pool.
  /// [tags] The tags to be persisted on the agent pool virtual machine scale set.
  /// [type] The type of Agent Pool.
  /// [upgradeSettings] Settings for upgrading the agentpool
  /// [virtualMachineNodesStatus] The status of nodes in a VirtualMachines agent pool.
  /// [virtualMachinesProfile] Specifications on VirtualMachines agent pool.
  /// [vmSize] The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  /// [vnetSubnetID] The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  /// [windowsProfile] The Windows agent pool's specific profile.
  /// [workloadRuntime] Determines the type of workload a node can run.
  ManagedClusterAgentPoolProfileResponse({
    this.availabilityZones,
    this.capacityReservationGroupID,
    this.count,
    this.creationData,
    required this.currentOrchestratorVersion,
    required this.eTag,
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
    required this.nodeImageVersion,
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
    required this.provisioningState,
    this.proximityPlacementGroupID,
    this.scaleDownMode,
    this.scaleSetEvictionPolicy,
    this.scaleSetPriority,
    this.securityProfile,
    this.spotMaxPrice,
    this.status,
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
      'creationData': ?pulumi.Input.mapOptionalInputValue<CreationDataResponse, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'currentOrchestratorVersion': currentOrchestratorVersion,
      'eTag': eTag,
      'enableAutoScaling': ?enableAutoScaling,
      'enableEncryptionAtHost': ?enableEncryptionAtHost,
      'enableFIPS': ?enableFIPS,
      'enableNodePublicIP': ?enableNodePublicIP,
      'enableUltraSSD': ?enableUltraSSD,
      'gatewayProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolGatewayProfileResponse, Map<String, dynamic>>(gatewayProfile, (value) => value.toMap()),
      'gpuInstanceProfile': ?gpuInstanceProfile,
      'gpuProfile': ?pulumi.Input.mapOptionalInputValue<GPUProfileResponse, Map<String, dynamic>>(gpuProfile, (value) => value.toMap()),
      'hostGroupID': ?hostGroupID,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<KubeletConfigResponse, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'kubeletDiskType': ?kubeletDiskType,
      'linuxOSConfig': ?pulumi.Input.mapOptionalInputValue<LinuxOSConfigResponse, Map<String, dynamic>>(linuxOSConfig, (value) => value.toMap()),
      'localDNSProfile': ?pulumi.Input.mapOptionalInputValue<LocalDNSProfileResponse, Map<String, dynamic>>(localDNSProfile, (value) => value.toMap()),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'messageOfTheDay': ?messageOfTheDay,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolNetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'nodeImageVersion': nodeImageVersion,
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
      'powerState': ?pulumi.Input.mapOptionalInputValue<PowerStateResponse, Map<String, dynamic>>(powerState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'proximityPlacementGroupID': ?proximityPlacementGroupID,
      'scaleDownMode': ?scaleDownMode,
      'scaleSetEvictionPolicy': ?scaleSetEvictionPolicy,
      'scaleSetPriority': ?scaleSetPriority,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolSecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'spotMaxPrice': ?spotMaxPrice,
      'status': ?pulumi.Input.mapOptionalInputValue<AgentPoolStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'tags': ?tags,
      'type': ?type,
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<AgentPoolUpgradeSettingsResponse, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'virtualMachineNodesStatus': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineNodesResponse>, List<Map<String, dynamic>>>(virtualMachineNodesStatus, (value) => pulumi.Input.encodeList<VirtualMachineNodesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualMachinesProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachinesProfileResponse, Map<String, dynamic>>(virtualMachinesProfile, (value) => value.toMap()),
      'vmSize': ?vmSize,
      'vnetSubnetID': ?vnetSubnetID,
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<AgentPoolWindowsProfileResponse, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
      'workloadRuntime': ?workloadRuntime,
    };
  }

  factory ManagedClusterAgentPoolProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAgentPoolProfileResponse(
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      capacityReservationGroupID: map['capacityReservationGroupID'] == null ? null : (map['capacityReservationGroupID'] as String).input(),
      count: map['count'] == null ? null : (map['count'] as int).input(),
      creationData: map['creationData'] == null ? null : (CreationDataResponse.fromMap((map['creationData'] as Map).cast<String, dynamic>())).input(),
      currentOrchestratorVersion: (map['currentOrchestratorVersion'] as String).input(),
      eTag: (map['eTag'] as String).input(),
      enableAutoScaling: map['enableAutoScaling'] == null ? null : (map['enableAutoScaling'] as bool).input(),
      enableEncryptionAtHost: map['enableEncryptionAtHost'] == null ? null : (map['enableEncryptionAtHost'] as bool).input(),
      enableFIPS: map['enableFIPS'] == null ? null : (map['enableFIPS'] as bool).input(),
      enableNodePublicIP: map['enableNodePublicIP'] == null ? null : (map['enableNodePublicIP'] as bool).input(),
      enableUltraSSD: map['enableUltraSSD'] == null ? null : (map['enableUltraSSD'] as bool).input(),
      gatewayProfile: map['gatewayProfile'] == null ? null : (AgentPoolGatewayProfileResponse.fromMap((map['gatewayProfile'] as Map).cast<String, dynamic>())).input(),
      gpuInstanceProfile: map['gpuInstanceProfile'] == null ? null : (map['gpuInstanceProfile'] as String).input(),
      gpuProfile: map['gpuProfile'] == null ? null : (GPUProfileResponse.fromMap((map['gpuProfile'] as Map).cast<String, dynamic>())).input(),
      hostGroupID: map['hostGroupID'] == null ? null : (map['hostGroupID'] as String).input(),
      kubeletConfig: map['kubeletConfig'] == null ? null : (KubeletConfigResponse.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())).input(),
      kubeletDiskType: map['kubeletDiskType'] == null ? null : (map['kubeletDiskType'] as String).input(),
      linuxOSConfig: map['linuxOSConfig'] == null ? null : (LinuxOSConfigResponse.fromMap((map['linuxOSConfig'] as Map).cast<String, dynamic>())).input(),
      localDNSProfile: map['localDNSProfile'] == null ? null : (LocalDNSProfileResponse.fromMap((map['localDNSProfile'] as Map).cast<String, dynamic>())).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount'] as int).input(),
      maxPods: map['maxPods'] == null ? null : (map['maxPods'] as int).input(),
      messageOfTheDay: map['messageOfTheDay'] == null ? null : (map['messageOfTheDay'] as String).input(),
      minCount: map['minCount'] == null ? null : (map['minCount'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (AgentPoolNetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      nodeImageVersion: (map['nodeImageVersion'] as String).input(),
      nodeLabels: map['nodeLabels'] == null ? null : ((map['nodeLabels'] as Map).cast<String, String>()).input(),
      nodePublicIPPrefixID: map['nodePublicIPPrefixID'] == null ? null : (map['nodePublicIPPrefixID'] as String).input(),
      nodeTaints: map['nodeTaints'] == null ? null : ((map['nodeTaints'] as List).cast<String>()).input(),
      orchestratorVersion: map['orchestratorVersion'] == null ? null : (map['orchestratorVersion'] as String).input(),
      osDiskSizeGB: map['osDiskSizeGB'] == null ? null : (map['osDiskSizeGB'] as int).input(),
      osDiskType: map['osDiskType'] == null ? null : (map['osDiskType'] as String).input(),
      osSKU: map['osSKU'] == null ? null : (map['osSKU'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      podIPAllocationMode: map['podIPAllocationMode'] == null ? null : (map['podIPAllocationMode'] as String).input(),
      podSubnetID: map['podSubnetID'] == null ? null : (map['podSubnetID'] as String).input(),
      powerState: map['powerState'] == null ? null : (PowerStateResponse.fromMap((map['powerState'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      proximityPlacementGroupID: map['proximityPlacementGroupID'] == null ? null : (map['proximityPlacementGroupID'] as String).input(),
      scaleDownMode: map['scaleDownMode'] == null ? null : (map['scaleDownMode'] as String).input(),
      scaleSetEvictionPolicy: map['scaleSetEvictionPolicy'] == null ? null : (map['scaleSetEvictionPolicy'] as String).input(),
      scaleSetPriority: map['scaleSetPriority'] == null ? null : (map['scaleSetPriority'] as String).input(),
      securityProfile: map['securityProfile'] == null ? null : (AgentPoolSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      spotMaxPrice: map['spotMaxPrice'] == null ? null : (map['spotMaxPrice'] as double).input(),
      status: map['status'] == null ? null : (AgentPoolStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      upgradeSettings: map['upgradeSettings'] == null ? null : (AgentPoolUpgradeSettingsResponse.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())).input(),
      virtualMachineNodesStatus: map['virtualMachineNodesStatus'] == null ? null : (pulumi.Input.decodeList<VirtualMachineNodesResponse>(map['virtualMachineNodesStatus'], (value) => VirtualMachineNodesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualMachinesProfile: map['virtualMachinesProfile'] == null ? null : (VirtualMachinesProfileResponse.fromMap((map['virtualMachinesProfile'] as Map).cast<String, dynamic>())).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize'] as String).input(),
      vnetSubnetID: map['vnetSubnetID'] == null ? null : (map['vnetSubnetID'] as String).input(),
      windowsProfile: map['windowsProfile'] == null ? null : (AgentPoolWindowsProfileResponse.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>())).input(),
      workloadRuntime: map['workloadRuntime'] == null ? null : (map['workloadRuntime'] as String).input(),
    );
  }
}

