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

/// {@template pulumi_containerservice_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_containerservice_agent_pool_args_doc}
class AgentPoolArgs {
  /// The name of the agent pool.
  final pulumi.Input<String>? agentPoolName;
  /// The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  final pulumi.Input<List<String>>? availabilityZones;
  /// AKS will associate the specified agent pool with the Capacity Reservation Group.
  final pulumi.Input<String>? capacityReservationGroupID;
  /// Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  final pulumi.Input<int>? count;
  /// CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  final pulumi.Input<CreationData>? creationData;
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
  final pulumi.Input<AgentPoolGatewayProfile>? gatewayProfile;
  /// GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
  final pulumi.Input<String>? gpuInstanceProfile;
  /// GPU settings for the Agent Pool.
  final pulumi.Input<GPUProfile>? gpuProfile;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts).
  final pulumi.Input<String>? hostGroupID;
  /// The Kubelet configuration on the agent pool nodes.
  final pulumi.Input<KubeletConfig>? kubeletConfig;
  /// Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  final pulumi.Input<String>? kubeletDiskType;
  /// The OS configuration of Linux agent nodes.
  final pulumi.Input<LinuxOSConfig>? linuxOSConfig;
  /// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  final pulumi.Input<LocalDNSProfile>? localDNSProfile;
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
  /// Network-related settings of an agent pool.
  final pulumi.Input<AgentPoolNetworkProfile>? networkProfile;
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
  final pulumi.Input<PowerState>? powerState;
  /// The ID for Proximity Placement Group.
  final pulumi.Input<String>? proximityPlacementGroupID;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  final pulumi.Input<String>? scaleDownMode;
  /// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  final pulumi.Input<String>? scaleSetEvictionPolicy;
  /// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  final pulumi.Input<String>? scaleSetPriority;
  /// The security settings of an agent pool.
  final pulumi.Input<AgentPoolSecurityProfile>? securityProfile;
  /// The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  final pulumi.Input<double>? spotMaxPrice;
  /// The tags to be persisted on the agent pool virtual machine scale set.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of Agent Pool.
  final pulumi.Input<String>? type;
  /// Settings for upgrading the agentpool
  final pulumi.Input<AgentPoolUpgradeSettings>? upgradeSettings;
  /// The status of nodes in a VirtualMachines agent pool.
  final pulumi.Input<List<VirtualMachineNodes>>? virtualMachineNodesStatus;
  /// Specifications on VirtualMachines agent pool.
  final pulumi.Input<VirtualMachinesProfile>? virtualMachinesProfile;
  /// The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  final pulumi.Input<String>? vmSize;
  /// The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final pulumi.Input<String>? vnetSubnetID;
  /// The Windows agent pool's specific profile.
  final pulumi.Input<AgentPoolWindowsProfile>? windowsProfile;
  /// Determines the type of workload a node can run.
  final pulumi.Input<String>? workloadRuntime;

  /// Creates a new [AgentPoolArgs].
  /// [agentPoolName] The name of the agent pool.
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
  /// [networkProfile] Network-related settings of an agent pool.
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
  /// [proximityPlacementGroupID] The ID for Proximity Placement Group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
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
  AgentPoolArgs({
    pulumi.Output<String>? agentPoolName,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<String>? capacityReservationGroupID,
    pulumi.Output<int>? count,
    pulumi.Output<CreationData>? creationData,
    pulumi.Output<bool>? enableAutoScaling,
    pulumi.Output<bool>? enableEncryptionAtHost,
    pulumi.Output<bool>? enableFIPS,
    pulumi.Output<bool>? enableNodePublicIP,
    pulumi.Output<bool>? enableUltraSSD,
    pulumi.Output<AgentPoolGatewayProfile>? gatewayProfile,
    pulumi.Output<String>? gpuInstanceProfile,
    pulumi.Output<GPUProfile>? gpuProfile,
    pulumi.Output<String>? hostGroupID,
    pulumi.Output<KubeletConfig>? kubeletConfig,
    pulumi.Output<String>? kubeletDiskType,
    pulumi.Output<LinuxOSConfig>? linuxOSConfig,
    pulumi.Output<LocalDNSProfile>? localDNSProfile,
    pulumi.Output<int>? maxCount,
    pulumi.Output<int>? maxPods,
    pulumi.Output<String>? messageOfTheDay,
    pulumi.Output<int>? minCount,
    pulumi.Output<String>? mode,
    pulumi.Output<AgentPoolNetworkProfile>? networkProfile,
    pulumi.Output<Map<String, String>>? nodeLabels,
    pulumi.Output<String>? nodePublicIPPrefixID,
    pulumi.Output<List<String>>? nodeTaints,
    pulumi.Output<String>? orchestratorVersion,
    pulumi.Output<int>? osDiskSizeGB,
    pulumi.Output<String>? osDiskType,
    pulumi.Output<String>? osSKU,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? podIPAllocationMode,
    pulumi.Output<String>? podSubnetID,
    pulumi.Output<PowerState>? powerState,
    pulumi.Output<String>? proximityPlacementGroupID,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? scaleDownMode,
    pulumi.Output<String>? scaleSetEvictionPolicy,
    pulumi.Output<String>? scaleSetPriority,
    pulumi.Output<AgentPoolSecurityProfile>? securityProfile,
    pulumi.Output<double>? spotMaxPrice,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<AgentPoolUpgradeSettings>? upgradeSettings,
    pulumi.Output<List<VirtualMachineNodes>>? virtualMachineNodesStatus,
    pulumi.Output<VirtualMachinesProfile>? virtualMachinesProfile,
    pulumi.Output<String>? vmSize,
    pulumi.Output<String>? vnetSubnetID,
    pulumi.Output<AgentPoolWindowsProfile>? windowsProfile,
    pulumi.Output<String>? workloadRuntime,
  }) :
      agentPoolName = pulumi.Input.asOptionalInput<String>(agentPoolName),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      capacityReservationGroupID = pulumi.Input.asOptionalInput<String>(capacityReservationGroupID),
      count = pulumi.Input.asOptionalInput<int>(count),
      creationData = pulumi.Input.asOptionalInput<CreationData>(creationData),
      enableAutoScaling = pulumi.Input.asOptionalInput<bool>(enableAutoScaling),
      enableEncryptionAtHost = pulumi.Input.asOptionalInput<bool>(enableEncryptionAtHost),
      enableFIPS = pulumi.Input.asOptionalInput<bool>(enableFIPS),
      enableNodePublicIP = pulumi.Input.asOptionalInput<bool>(enableNodePublicIP),
      enableUltraSSD = pulumi.Input.asOptionalInput<bool>(enableUltraSSD),
      gatewayProfile = pulumi.Input.asOptionalInput<AgentPoolGatewayProfile>(gatewayProfile),
      gpuInstanceProfile = pulumi.Input.asOptionalInput<String>(gpuInstanceProfile),
      gpuProfile = pulumi.Input.asOptionalInput<GPUProfile>(gpuProfile),
      hostGroupID = pulumi.Input.asOptionalInput<String>(hostGroupID),
      kubeletConfig = pulumi.Input.asOptionalInput<KubeletConfig>(kubeletConfig),
      kubeletDiskType = pulumi.Input.asOptionalInput<String>(kubeletDiskType),
      linuxOSConfig = pulumi.Input.asOptionalInput<LinuxOSConfig>(linuxOSConfig),
      localDNSProfile = pulumi.Input.asOptionalInput<LocalDNSProfile>(localDNSProfile),
      maxCount = pulumi.Input.asOptionalInput<int>(maxCount),
      maxPods = pulumi.Input.asOptionalInput<int>(maxPods),
      messageOfTheDay = pulumi.Input.asOptionalInput<String>(messageOfTheDay),
      minCount = pulumi.Input.asOptionalInput<int>(minCount),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      networkProfile = pulumi.Input.asOptionalInput<AgentPoolNetworkProfile>(networkProfile),
      nodeLabels = pulumi.Input.asOptionalInput<Map<String, String>>(nodeLabels),
      nodePublicIPPrefixID = pulumi.Input.asOptionalInput<String>(nodePublicIPPrefixID),
      nodeTaints = pulumi.Input.asOptionalInput<List<String>>(nodeTaints),
      orchestratorVersion = pulumi.Input.asOptionalInput<String>(orchestratorVersion),
      osDiskSizeGB = pulumi.Input.asOptionalInput<int>(osDiskSizeGB),
      osDiskType = pulumi.Input.asOptionalInput<String>(osDiskType),
      osSKU = pulumi.Input.asOptionalInput<String>(osSKU),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      podIPAllocationMode = pulumi.Input.asOptionalInput<String>(podIPAllocationMode),
      podSubnetID = pulumi.Input.asOptionalInput<String>(podSubnetID),
      powerState = pulumi.Input.asOptionalInput<PowerState>(powerState),
      proximityPlacementGroupID = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupID),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      scaleDownMode = pulumi.Input.asOptionalInput<String>(scaleDownMode),
      scaleSetEvictionPolicy = pulumi.Input.asOptionalInput<String>(scaleSetEvictionPolicy),
      scaleSetPriority = pulumi.Input.asOptionalInput<String>(scaleSetPriority),
      securityProfile = pulumi.Input.asOptionalInput<AgentPoolSecurityProfile>(securityProfile),
      spotMaxPrice = pulumi.Input.asOptionalInput<double>(spotMaxPrice),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      upgradeSettings = pulumi.Input.asOptionalInput<AgentPoolUpgradeSettings>(upgradeSettings),
      virtualMachineNodesStatus = pulumi.Input.asOptionalInput<List<VirtualMachineNodes>>(virtualMachineNodesStatus),
      virtualMachinesProfile = pulumi.Input.asOptionalInput<VirtualMachinesProfile>(virtualMachinesProfile),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize),
      vnetSubnetID = pulumi.Input.asOptionalInput<String>(vnetSubnetID),
      windowsProfile = pulumi.Input.asOptionalInput<AgentPoolWindowsProfile>(windowsProfile),
      workloadRuntime = pulumi.Input.asOptionalInput<String>(workloadRuntime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
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
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
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

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      agentPoolName: map['agentPoolName'] == null ? null : pulumi.Output.create<String>(map['agentPoolName'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      capacityReservationGroupID: map['capacityReservationGroupID'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupID'] as String),
      count: map['count'] == null ? null : pulumi.Output.create<int>(map['count'] as int),
      creationData: map['creationData'] == null ? null : pulumi.Output.create<CreationData>(CreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>())),
      enableAutoScaling: map['enableAutoScaling'] == null ? null : pulumi.Output.create<bool>(map['enableAutoScaling'] as bool),
      enableEncryptionAtHost: map['enableEncryptionAtHost'] == null ? null : pulumi.Output.create<bool>(map['enableEncryptionAtHost'] as bool),
      enableFIPS: map['enableFIPS'] == null ? null : pulumi.Output.create<bool>(map['enableFIPS'] as bool),
      enableNodePublicIP: map['enableNodePublicIP'] == null ? null : pulumi.Output.create<bool>(map['enableNodePublicIP'] as bool),
      enableUltraSSD: map['enableUltraSSD'] == null ? null : pulumi.Output.create<bool>(map['enableUltraSSD'] as bool),
      gatewayProfile: map['gatewayProfile'] == null ? null : pulumi.Output.create<AgentPoolGatewayProfile>(AgentPoolGatewayProfile.fromMap((map['gatewayProfile'] as Map).cast<String, dynamic>())),
      gpuInstanceProfile: map['gpuInstanceProfile'] == null ? null : pulumi.Output.create<String>(map['gpuInstanceProfile'] as String),
      gpuProfile: map['gpuProfile'] == null ? null : pulumi.Output.create<GPUProfile>(GPUProfile.fromMap((map['gpuProfile'] as Map).cast<String, dynamic>())),
      hostGroupID: map['hostGroupID'] == null ? null : pulumi.Output.create<String>(map['hostGroupID'] as String),
      kubeletConfig: map['kubeletConfig'] == null ? null : pulumi.Output.create<KubeletConfig>(KubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())),
      kubeletDiskType: map['kubeletDiskType'] == null ? null : pulumi.Output.create<String>(map['kubeletDiskType'] as String),
      linuxOSConfig: map['linuxOSConfig'] == null ? null : pulumi.Output.create<LinuxOSConfig>(LinuxOSConfig.fromMap((map['linuxOSConfig'] as Map).cast<String, dynamic>())),
      localDNSProfile: map['localDNSProfile'] == null ? null : pulumi.Output.create<LocalDNSProfile>(LocalDNSProfile.fromMap((map['localDNSProfile'] as Map).cast<String, dynamic>())),
      maxCount: map['maxCount'] == null ? null : pulumi.Output.create<int>(map['maxCount'] as int),
      maxPods: map['maxPods'] == null ? null : pulumi.Output.create<int>(map['maxPods'] as int),
      messageOfTheDay: map['messageOfTheDay'] == null ? null : pulumi.Output.create<String>(map['messageOfTheDay'] as String),
      minCount: map['minCount'] == null ? null : pulumi.Output.create<int>(map['minCount'] as int),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<AgentPoolNetworkProfile>(AgentPoolNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      nodeLabels: map['nodeLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['nodeLabels'] as Map).cast<String, String>()),
      nodePublicIPPrefixID: map['nodePublicIPPrefixID'] == null ? null : pulumi.Output.create<String>(map['nodePublicIPPrefixID'] as String),
      nodeTaints: map['nodeTaints'] == null ? null : pulumi.Output.create<List<String>>((map['nodeTaints'] as List).cast<String>()),
      orchestratorVersion: map['orchestratorVersion'] == null ? null : pulumi.Output.create<String>(map['orchestratorVersion'] as String),
      osDiskSizeGB: map['osDiskSizeGB'] == null ? null : pulumi.Output.create<int>(map['osDiskSizeGB'] as int),
      osDiskType: map['osDiskType'] == null ? null : pulumi.Output.create<String>(map['osDiskType'] as String),
      osSKU: map['osSKU'] == null ? null : pulumi.Output.create<String>(map['osSKU'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      podIPAllocationMode: map['podIPAllocationMode'] == null ? null : pulumi.Output.create<String>(map['podIPAllocationMode'] as String),
      podSubnetID: map['podSubnetID'] == null ? null : pulumi.Output.create<String>(map['podSubnetID'] as String),
      powerState: map['powerState'] == null ? null : pulumi.Output.create<PowerState>(PowerState.fromMap((map['powerState'] as Map).cast<String, dynamic>())),
      proximityPlacementGroupID: map['proximityPlacementGroupID'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupID'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      scaleDownMode: map['scaleDownMode'] == null ? null : pulumi.Output.create<String>(map['scaleDownMode'] as String),
      scaleSetEvictionPolicy: map['scaleSetEvictionPolicy'] == null ? null : pulumi.Output.create<String>(map['scaleSetEvictionPolicy'] as String),
      scaleSetPriority: map['scaleSetPriority'] == null ? null : pulumi.Output.create<String>(map['scaleSetPriority'] as String),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<AgentPoolSecurityProfile>(AgentPoolSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      spotMaxPrice: map['spotMaxPrice'] == null ? null : pulumi.Output.create<double>(map['spotMaxPrice'] as double),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      upgradeSettings: map['upgradeSettings'] == null ? null : pulumi.Output.create<AgentPoolUpgradeSettings>(AgentPoolUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())),
      virtualMachineNodesStatus: map['virtualMachineNodesStatus'] == null ? null : pulumi.Output.create<List<VirtualMachineNodes>>(pulumi.Input.decodeList<VirtualMachineNodes>(map['virtualMachineNodesStatus'], (value) => VirtualMachineNodes.fromMap((value as Map).cast<String, dynamic>()))),
      virtualMachinesProfile: map['virtualMachinesProfile'] == null ? null : pulumi.Output.create<VirtualMachinesProfile>(VirtualMachinesProfile.fromMap((map['virtualMachinesProfile'] as Map).cast<String, dynamic>())),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
      vnetSubnetID: map['vnetSubnetID'] == null ? null : pulumi.Output.create<String>(map['vnetSubnetID'] as String),
      windowsProfile: map['windowsProfile'] == null ? null : pulumi.Output.create<AgentPoolWindowsProfile>(AgentPoolWindowsProfile.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>())),
      workloadRuntime: map['workloadRuntime'] == null ? null : pulumi.Output.create<String>(map['workloadRuntime'] as String),
    );
  }
}

