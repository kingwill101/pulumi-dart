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

/// Result data returned by getAgentPool.
class GetAgentPoolResult {
  /// The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// AKS will associate the specified agent pool with the Capacity Reservation Group.
  final String? capacityReservationGroupID;
  /// Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  final int? count;
  /// CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  final CreationDataResponse? creationData;
  /// The version of Kubernetes the Agent Pool is running. If orchestratorVersion is a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If orchestratorVersion is &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used.
  final String? currentOrchestratorVersion;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  final String? eTag;
  /// Whether to enable auto-scaler
  final bool? enableAutoScaling;
  /// Whether to enable host based OS and data drive encryption. This is only supported on certain VM sizes and in certain Azure regions. For more information, see: https://docs.microsoft.com/azure/aks/enable-host-encryption
  final bool? enableEncryptionAtHost;
  /// Whether to use a FIPS-enabled OS. See [Add a FIPS-enabled node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview) for more details.
  final bool? enableFIPS;
  /// Whether each node is allocated its own public IP. Some scenarios may require nodes in a node pool to receive their own dedicated public IP addresses. A common scenario is for gaming workloads, where a console needs to make a direct connection to a cloud virtual machine to minimize hops. For more information see [assigning a public IP per node](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#assign-a-public-ip-per-node-for-your-node-pools). The default is false.
  final bool? enableNodePublicIP;
  /// Whether to enable UltraSSD
  final bool? enableUltraSSD;
  /// Profile specific to a managed agent pool in Gateway mode. This field cannot be set if agent pool mode is not Gateway.
  final AgentPoolGatewayProfileResponse? gatewayProfile;
  /// GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
  final String? gpuInstanceProfile;
  /// GPU settings for the Agent Pool.
  final GPUProfileResponse? gpuProfile;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts).
  final String? hostGroupID;
  /// Resource ID.
  final String? id;
  /// The Kubelet configuration on the agent pool nodes.
  final KubeletConfigResponse? kubeletConfig;
  /// Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  final String? kubeletDiskType;
  /// The OS configuration of Linux agent nodes.
  final LinuxOSConfigResponse? linuxOSConfig;
  /// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  final LocalDNSProfileResponse? localDNSProfile;
  /// The maximum number of nodes for auto-scaling
  final int? maxCount;
  /// The maximum number of pods that can run on a node.
  final int? maxPods;
  /// Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script).
  final String? messageOfTheDay;
  /// The minimum number of nodes for auto-scaling
  final int? minCount;
  /// The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
  final String? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Network-related settings of an agent pool.
  final AgentPoolNetworkProfileResponse? networkProfile;
  /// The version of node image
  final String? nodeImageVersion;
  /// The node labels to be persisted across all nodes in agent pool.
  final Map<String, String>? nodeLabels;
  /// The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName}
  final String? nodePublicIPPrefixID;
  /// The taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final List<String>? nodeTaints;
  /// The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool).
  final String? orchestratorVersion;
  /// OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.
  final int? osDiskSizeGB;
  /// The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
  final String? osDiskType;
  /// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes &lt;= 1.24 or Windows2022 when Kubernetes &gt;= 1.25 if OSType is Windows.
  final String? osSKU;
  /// The operating system type. The default is Linux.
  final String? osType;
  /// Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
  final String? podIPAllocationMode;
  /// The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final String? podSubnetID;
  /// Whether the Agent Pool is running or stopped. When an Agent Pool is first created it is initially Running. The Agent Pool can be stopped by setting this field to Stopped. A stopped Agent Pool stops all of its VMs and does not accrue billing charges. An Agent Pool can only be stopped if it is Running and provisioning state is Succeeded
  final PowerStateResponse? powerState;
  /// The current deployment or provisioning state.
  final String? provisioningState;
  /// The ID for Proximity Placement Group.
  final String? proximityPlacementGroupID;
  /// The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  final String? scaleDownMode;
  /// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  final String? scaleSetEvictionPolicy;
  /// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  final String? scaleSetPriority;
  /// The security settings of an agent pool.
  final AgentPoolSecurityProfileResponse? securityProfile;
  /// The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  final double? spotMaxPrice;
  /// Contains read-only information about the Agent Pool.
  final AgentPoolStatusResponse? status;
  /// The tags to be persisted on the agent pool virtual machine scale set.
  final Map<String, String>? tags;
  /// Resource type
  final String? type;
  /// Settings for upgrading the agentpool
  final AgentPoolUpgradeSettingsResponse? upgradeSettings;
  /// The status of nodes in a VirtualMachines agent pool.
  final List<VirtualMachineNodesResponse>? virtualMachineNodesStatus;
  /// Specifications on VirtualMachines agent pool.
  final VirtualMachinesProfileResponse? virtualMachinesProfile;
  /// The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  final String? vmSize;
  /// The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  final String? vnetSubnetID;
  /// The Windows agent pool's specific profile.
  final AgentPoolWindowsProfileResponse? windowsProfile;
  /// Determines the type of workload a node can run.
  final String? workloadRuntime;

  /// Creates a new [GetAgentPoolResult].
  /// [availabilityZones] The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is 'VirtualMachineScaleSets'.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacityReservationGroupID] AKS will associate the specified agent pool with the Capacity Reservation Group.
  /// [count] Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1.
  /// [creationData] CreationData to be used to specify the source Snapshot ID if the node pool will be created/upgraded using a snapshot.
  /// [currentOrchestratorVersion] The version of Kubernetes the Agent Pool is running. If orchestratorVersion is a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If orchestratorVersion is &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used.
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
  /// [id] Resource ID.
  /// [kubeletConfig] The Kubelet configuration on the agent pool nodes.
  /// [kubeletDiskType] Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
  /// [linuxOSConfig] The OS configuration of Linux agent nodes.
  /// [localDNSProfile] Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
  /// [maxCount] The maximum number of nodes for auto-scaling
  /// [maxPods] The maximum number of pods that can run on a node.
  /// [messageOfTheDay] Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script).
  /// [minCount] The minimum number of nodes for auto-scaling
  /// [mode] The mode of an agent pool. A cluster must have at least one 'System' Agent Pool at all times. For additional information on agent pool restrictions and best practices, see: https://docs.microsoft.com/azure/aks/use-system-pools
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [networkProfile] Network-related settings of an agent pool.
  /// [nodeImageVersion] The version of node image
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
  /// [provisioningState] The current deployment or provisioning state.
  /// [proximityPlacementGroupID] The ID for Proximity Placement Group.
  /// [scaleDownMode] The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
  /// [scaleSetEvictionPolicy] The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
  /// [scaleSetPriority] The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  /// [securityProfile] The security settings of an agent pool.
  /// [spotMaxPrice] The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing)
  /// [status] Contains read-only information about the Agent Pool.
  /// [tags] The tags to be persisted on the agent pool virtual machine scale set.
  /// [type] Resource type
  /// [upgradeSettings] Settings for upgrading the agentpool
  /// [virtualMachineNodesStatus] The status of nodes in a VirtualMachines agent pool.
  /// [virtualMachinesProfile] Specifications on VirtualMachines agent pool.
  /// [vmSize] The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions
  /// [vnetSubnetID] The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
  /// [windowsProfile] The Windows agent pool's specific profile.
  /// [workloadRuntime] Determines the type of workload a node can run.
  const GetAgentPoolResult({
    this.availabilityZones,
    this.azureApiVersion,
    this.capacityReservationGroupID,
    this.count,
    this.creationData,
    this.currentOrchestratorVersion,
    this.eTag,
    this.enableAutoScaling,
    this.enableEncryptionAtHost,
    this.enableFIPS,
    this.enableNodePublicIP,
    this.enableUltraSSD,
    this.gatewayProfile,
    this.gpuInstanceProfile,
    this.gpuProfile,
    this.hostGroupID,
    this.id,
    this.kubeletConfig,
    this.kubeletDiskType,
    this.linuxOSConfig,
    this.localDNSProfile,
    this.maxCount,
    this.maxPods,
    this.messageOfTheDay,
    this.minCount,
    this.mode,
    this.name,
    this.networkProfile,
    this.nodeImageVersion,
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
    this.provisioningState,
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
      'azureApiVersion': ?azureApiVersion,
      'capacityReservationGroupID': ?capacityReservationGroupID,
      'count': ?count,
      'creationData': ?creationData?.toMap(),
      'currentOrchestratorVersion': ?currentOrchestratorVersion,
      'eTag': ?eTag,
      'enableAutoScaling': ?enableAutoScaling,
      'enableEncryptionAtHost': ?enableEncryptionAtHost,
      'enableFIPS': ?enableFIPS,
      'enableNodePublicIP': ?enableNodePublicIP,
      'enableUltraSSD': ?enableUltraSSD,
      'gatewayProfile': ?gatewayProfile?.toMap(),
      'gpuInstanceProfile': ?gpuInstanceProfile,
      'gpuProfile': ?gpuProfile?.toMap(),
      'hostGroupID': ?hostGroupID,
      'id': ?id,
      'kubeletConfig': ?kubeletConfig?.toMap(),
      'kubeletDiskType': ?kubeletDiskType,
      'linuxOSConfig': ?linuxOSConfig?.toMap(),
      'localDNSProfile': ?localDNSProfile?.toMap(),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'messageOfTheDay': ?messageOfTheDay,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'nodeImageVersion': ?nodeImageVersion,
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
      'powerState': ?powerState?.toMap(),
      'provisioningState': ?provisioningState,
      'proximityPlacementGroupID': ?proximityPlacementGroupID,
      'scaleDownMode': ?scaleDownMode,
      'scaleSetEvictionPolicy': ?scaleSetEvictionPolicy,
      'scaleSetPriority': ?scaleSetPriority,
      'securityProfile': ?securityProfile?.toMap(),
      'spotMaxPrice': ?spotMaxPrice,
      'status': ?status?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'upgradeSettings': ?upgradeSettings?.toMap(),
      'virtualMachineNodesStatus': ?(() { final guardedValue = virtualMachineNodesStatus; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualMachineNodesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'virtualMachinesProfile': ?virtualMachinesProfile?.toMap(),
      'vmSize': ?vmSize,
      'vnetSubnetID': ?vnetSubnetID,
      'windowsProfile': ?windowsProfile?.toMap(),
      'workloadRuntime': ?workloadRuntime,
    };
  }

  factory GetAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolResult(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityReservationGroupID: (() { final guardedValue = map['capacityReservationGroupID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      currentOrchestratorVersion: (() { final guardedValue = map['currentOrchestratorVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableAutoScaling: (() { final guardedValue = map['enableAutoScaling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableEncryptionAtHost: (() { final guardedValue = map['enableEncryptionAtHost']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableFIPS: (() { final guardedValue = map['enableFIPS']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNodePublicIP: (() { final guardedValue = map['enableNodePublicIP']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableUltraSSD: (() { final guardedValue = map['enableUltraSSD']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      gatewayProfile: (() { final guardedValue = map['gatewayProfile']; if (guardedValue == null) return null; return AgentPoolGatewayProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gpuInstanceProfile: (() { final guardedValue = map['gpuInstanceProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gpuProfile: (() { final guardedValue = map['gpuProfile']; if (guardedValue == null) return null; return GPUProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostGroupID: (() { final guardedValue = map['hostGroupID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubeletConfig: (() { final guardedValue = map['kubeletConfig']; if (guardedValue == null) return null; return KubeletConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kubeletDiskType: (() { final guardedValue = map['kubeletDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linuxOSConfig: (() { final guardedValue = map['linuxOSConfig']; if (guardedValue == null) return null; return LinuxOSConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      localDNSProfile: (() { final guardedValue = map['localDNSProfile']; if (guardedValue == null) return null; return LocalDNSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      messageOfTheDay: (() { final guardedValue = map['messageOfTheDay']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return AgentPoolNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeImageVersion: (() { final guardedValue = map['nodeImageVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeLabels: (() { final guardedValue = map['nodeLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      nodePublicIPPrefixID: (() { final guardedValue = map['nodePublicIPPrefixID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTaints: (() { final guardedValue = map['nodeTaints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      orchestratorVersion: (() { final guardedValue = map['orchestratorVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osDiskSizeGB: (() { final guardedValue = map['osDiskSizeGB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      osDiskType: (() { final guardedValue = map['osDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osSKU: (() { final guardedValue = map['osSKU']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      podIPAllocationMode: (() { final guardedValue = map['podIPAllocationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      podSubnetID: (() { final guardedValue = map['podSubnetID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return PowerStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proximityPlacementGroupID: (() { final guardedValue = map['proximityPlacementGroupID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scaleDownMode: (() { final guardedValue = map['scaleDownMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scaleSetEvictionPolicy: (() { final guardedValue = map['scaleSetEvictionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scaleSetPriority: (() { final guardedValue = map['scaleSetPriority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return AgentPoolSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spotMaxPrice: (() { final guardedValue = map['spotMaxPrice']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return AgentPoolStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return AgentPoolUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      virtualMachineNodesStatus: (() { final guardedValue = map['virtualMachineNodesStatus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualMachineNodesResponse>(guardedValue, (value) => VirtualMachineNodesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      virtualMachinesProfile: (() { final guardedValue = map['virtualMachinesProfile']; if (guardedValue == null) return null; return VirtualMachinesProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vnetSubnetID: (() { final guardedValue = map['vnetSubnetID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      windowsProfile: (() { final guardedValue = map['windowsProfile']; if (guardedValue == null) return null; return AgentPoolWindowsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workloadRuntime: (() { final guardedValue = map['workloadRuntime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
