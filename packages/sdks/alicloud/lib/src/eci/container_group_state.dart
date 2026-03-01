// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_acr_registry_info.dart';
import 'container_group_container.dart';
import 'container_group_dns_config.dart';
import 'container_group_host_alias.dart';
import 'container_group_image_registry_credential.dart';
import 'container_group_init_container.dart';
import 'container_group_security_context.dart';
import 'container_group_volume.dart';

/// Input properties used for looking up and filtering ContainerGroup resources.
class ContainerGroupState {
  /// The ACR enterprise edition example properties. See `acr_registry_info` below.
  final pulumi.Input<List<ContainerGroupAcrRegistryInfo>>? acrRegistryInfos;
  /// Specifies whether to automatically create an EIP and bind the EIP to the elastic container instance.
  final pulumi.Input<bool>? autoCreateEip;
  /// Specifies whether to automatically match the image cache. Default value: `false`. Valid values: `true` and `false`.
  final pulumi.Input<bool>? autoMatchImageCache;
  /// The name of the container group.
  final pulumi.Input<String>? containerGroupName;
  /// The list of containers. See `containers` below.
  final pulumi.Input<List<ContainerGroupContainer>>? containers;
  /// The amount of CPU resources allocated to the container group.
  final pulumi.Input<double>? cpu;
  /// The structure of dnsConfig. See `dns_config` below.
  final pulumi.Input<ContainerGroupDnsConfig>? dnsConfig;
  /// The policy of DNS. Default value: `Default`. Valid values: `Default` and `None`.
  final pulumi.Input<String>? dnsPolicy;
  /// The bandwidth of the EIP. Default value: `5`.
  final pulumi.Input<int>? eipBandwidth;
  /// The ID of the elastic IP address (EIP).
  final pulumi.Input<String>? eipInstanceId;
  /// The size of the temporary storage space to add. Unit: GiB.
  final pulumi.Input<int>? ephemeralStorage;
  /// HostAliases. See `host_aliases` below.
  final pulumi.Input<List<ContainerGroupHostAlias>>? hostAliases;
  /// The image registry credential. See `image_registry_credential` below.
  final pulumi.Input<List<ContainerGroupImageRegistryCredential>>? imageRegistryCredentials;
  /// The list of initContainers. See `init_containers` below.
  final pulumi.Input<List<ContainerGroupInitContainer>>? initContainers;
  /// The address of the self-built mirror warehouse. When creating an image cache using an image in a self-built image repository with a self-signed certificate, you need to configure this parameter to skip certificate authentication to avoid image pull failure due to certificate authentication failure.
  final pulumi.Input<String>? insecureRegistry;
  /// The type of the ECS instance.
  final pulumi.Input<String>? instanceType;
  /// (Available since v1.170.0) The Public IP of the container group.
  final pulumi.Input<String>? internetIp;
  /// (Available since v1.170.0) The Private IP of the container group.
  final pulumi.Input<String>? intranetIp;
  /// The amount of memory resources allocated to the container group.
  final pulumi.Input<double>? memory;
  /// The address of the self-built mirror warehouse. When creating an image cache from an image in a self-built image repository using the HTTP protocol, you need to configure this parameter so that the ECI uses the HTTP protocol to pull the image to avoid image pull failure due to different protocols.
  final pulumi.Input<String>? plainHttpRegistry;
  /// The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  final pulumi.Input<String>? ramRoleName;
  /// The ID of the resource group. **NOTE:** From version 1.208.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The restart policy of the container group. Valid values: `Always`, `Never`, `OnFailure`.
  final pulumi.Input<String>? restartPolicy;
  /// The security context of the container group. See `security_context` below.
  final pulumi.Input<ContainerGroupSecurityContext>? securityContext;
  /// The ID of the security group to which the container group belongs. Container groups within the same security group can access each other.
  final pulumi.Input<String>? securityGroupId;
  /// The maximum hourly price of the ECI spot instance.
  final pulumi.Input<double>? spotPriceLimit;
  /// Filter the results by ECI spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  final pulumi.Input<String>? spotStrategy;
  /// The status of container group.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The buffer time during which the program handles operations before the program stops. Unit: seconds.
  final pulumi.Input<int>? terminationGracePeriodSeconds;
  /// The list of volumes. See `volumes` below.
  final pulumi.Input<List<ContainerGroupVolume>>? volumes;
  /// The ID of the VSwitch. Currently, container groups can only be deployed in VPC networks. The number of IP addresses in the VSwitch CIDR block determines the maximum number of container groups that can be created in the VSwitch. Before you can create an ECI instance, plan the CIDR block of the VSwitch.
  /// **NOTE:** From version 1.208.0, You can specify up to 10 `vswitch_id`. Separate multiple vSwitch IDs with commas (,), such as vsw-***,vsw-***.  attribute `vswitch_id` updating diff will be ignored when you set multiple vSwitchIds, there is only one valid `vswitch_id` exists in the set vSwitchIds.
  final pulumi.Input<String>? vswitchId;
  /// The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ContainerGroupState].
  /// [acrRegistryInfos] The ACR enterprise edition example properties. See `acr_registry_info` below.
  /// [autoCreateEip] Specifies whether to automatically create an EIP and bind the EIP to the elastic container instance.
  /// [autoMatchImageCache] Specifies whether to automatically match the image cache. Default value: `false`. Valid values: `true` and `false`.
  /// [containerGroupName] The name of the container group.
  /// [containers] The list of containers. See `containers` below.
  /// [cpu] The amount of CPU resources allocated to the container group.
  /// [dnsConfig] The structure of dnsConfig. See `dns_config` below.
  /// [dnsPolicy] The policy of DNS. Default value: `Default`. Valid values: `Default` and `None`.
  /// [eipBandwidth] The bandwidth of the EIP. Default value: `5`.
  /// [eipInstanceId] The ID of the elastic IP address (EIP).
  /// [ephemeralStorage] The size of the temporary storage space to add. Unit: GiB.
  /// [hostAliases] HostAliases. See `host_aliases` below.
  /// [imageRegistryCredentials] The image registry credential. See `image_registry_credential` below.
  /// [initContainers] The list of initContainers. See `init_containers` below.
  /// [insecureRegistry] The address of the self-built mirror warehouse. When creating an image cache using an image in a self-built image repository with a self-signed certificate, you need to configure this parameter to skip certificate authentication to avoid image pull failure due to certificate authentication failure.
  /// [instanceType] The type of the ECS instance.
  /// [internetIp] (Available since v1.170.0) The Public IP of the container group.
  /// [intranetIp] (Available since v1.170.0) The Private IP of the container group.
  /// [memory] The amount of memory resources allocated to the container group.
  /// [plainHttpRegistry] The address of the self-built mirror warehouse. When creating an image cache from an image in a self-built image repository using the HTTP protocol, you need to configure this parameter so that the ECI uses the HTTP protocol to pull the image to avoid image pull failure due to different protocols.
  /// [ramRoleName] The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  /// [resourceGroupId] The ID of the resource group. **NOTE:** From version 1.208.0, `resource_group_id` can be modified.
  /// [restartPolicy] The restart policy of the container group. Valid values: `Always`, `Never`, `OnFailure`.
  /// [securityContext] The security context of the container group. See `security_context` below.
  /// [securityGroupId] The ID of the security group to which the container group belongs. Container groups within the same security group can access each other.
  /// [spotPriceLimit] The maximum hourly price of the ECI spot instance.
  /// [spotStrategy] Filter the results by ECI spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  /// [status] The status of container group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [terminationGracePeriodSeconds] The buffer time during which the program handles operations before the program stops. Unit: seconds.
  /// [volumes] The list of volumes. See `volumes` below.
  /// [vswitchId] The ID of the VSwitch. Currently, container groups can only be deployed in VPC networks. The number of IP addresses in the VSwitch CIDR block determines the maximum number of container groups that can be created in the VSwitch. Before you can create an ECI instance, plan the CIDR block of the VSwitch.
  /// [zoneId] The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  ContainerGroupState({
    pulumi.Output<List<ContainerGroupAcrRegistryInfo>>? acrRegistryInfos,
    pulumi.Output<bool>? autoCreateEip,
    pulumi.Output<bool>? autoMatchImageCache,
    pulumi.Output<String>? containerGroupName,
    pulumi.Output<List<ContainerGroupContainer>>? containers,
    pulumi.Output<double>? cpu,
    pulumi.Output<ContainerGroupDnsConfig>? dnsConfig,
    pulumi.Output<String>? dnsPolicy,
    pulumi.Output<int>? eipBandwidth,
    pulumi.Output<String>? eipInstanceId,
    pulumi.Output<int>? ephemeralStorage,
    pulumi.Output<List<ContainerGroupHostAlias>>? hostAliases,
    pulumi.Output<List<ContainerGroupImageRegistryCredential>>? imageRegistryCredentials,
    pulumi.Output<List<ContainerGroupInitContainer>>? initContainers,
    pulumi.Output<String>? insecureRegistry,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? internetIp,
    pulumi.Output<String>? intranetIp,
    pulumi.Output<double>? memory,
    pulumi.Output<String>? plainHttpRegistry,
    pulumi.Output<String>? ramRoleName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? restartPolicy,
    pulumi.Output<ContainerGroupSecurityContext>? securityContext,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<double>? spotPriceLimit,
    pulumi.Output<String>? spotStrategy,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? terminationGracePeriodSeconds,
    pulumi.Output<List<ContainerGroupVolume>>? volumes,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      acrRegistryInfos = pulumi.Input.asOptionalInput<List<ContainerGroupAcrRegistryInfo>>(acrRegistryInfos),
      autoCreateEip = pulumi.Input.asOptionalInput<bool>(autoCreateEip),
      autoMatchImageCache = pulumi.Input.asOptionalInput<bool>(autoMatchImageCache),
      containerGroupName = pulumi.Input.asOptionalInput<String>(containerGroupName),
      containers = pulumi.Input.asOptionalInput<List<ContainerGroupContainer>>(containers),
      cpu = pulumi.Input.asOptionalInput<double>(cpu),
      dnsConfig = pulumi.Input.asOptionalInput<ContainerGroupDnsConfig>(dnsConfig),
      dnsPolicy = pulumi.Input.asOptionalInput<String>(dnsPolicy),
      eipBandwidth = pulumi.Input.asOptionalInput<int>(eipBandwidth),
      eipInstanceId = pulumi.Input.asOptionalInput<String>(eipInstanceId),
      ephemeralStorage = pulumi.Input.asOptionalInput<int>(ephemeralStorage),
      hostAliases = pulumi.Input.asOptionalInput<List<ContainerGroupHostAlias>>(hostAliases),
      imageRegistryCredentials = pulumi.Input.asOptionalInput<List<ContainerGroupImageRegistryCredential>>(imageRegistryCredentials),
      initContainers = pulumi.Input.asOptionalInput<List<ContainerGroupInitContainer>>(initContainers),
      insecureRegistry = pulumi.Input.asOptionalInput<String>(insecureRegistry),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      internetIp = pulumi.Input.asOptionalInput<String>(internetIp),
      intranetIp = pulumi.Input.asOptionalInput<String>(intranetIp),
      memory = pulumi.Input.asOptionalInput<double>(memory),
      plainHttpRegistry = pulumi.Input.asOptionalInput<String>(plainHttpRegistry),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      restartPolicy = pulumi.Input.asOptionalInput<String>(restartPolicy),
      securityContext = pulumi.Input.asOptionalInput<ContainerGroupSecurityContext>(securityContext),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      spotPriceLimit = pulumi.Input.asOptionalInput<double>(spotPriceLimit),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationGracePeriodSeconds = pulumi.Input.asOptionalInput<int>(terminationGracePeriodSeconds),
      volumes = pulumi.Input.asOptionalInput<List<ContainerGroupVolume>>(volumes),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrRegistryInfos': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupAcrRegistryInfo>, List<Map<String, dynamic>>>(acrRegistryInfos, (value) => pulumi.Input.encodeList<ContainerGroupAcrRegistryInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoCreateEip': ?autoCreateEip,
      'autoMatchImageCache': ?autoMatchImageCache,
      'containerGroupName': ?containerGroupName,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerGroupContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<ContainerGroupDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'dnsPolicy': ?dnsPolicy,
      'eipBandwidth': ?eipBandwidth,
      'eipInstanceId': ?eipInstanceId,
      'ephemeralStorage': ?ephemeralStorage,
      'hostAliases': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupHostAlias>, List<Map<String, dynamic>>>(hostAliases, (value) => pulumi.Input.encodeList<ContainerGroupHostAlias, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<ContainerGroupImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupInitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<ContainerGroupInitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insecureRegistry': ?insecureRegistry,
      'instanceType': ?instanceType,
      'internetIp': ?internetIp,
      'intranetIp': ?intranetIp,
      'memory': ?memory,
      'plainHttpRegistry': ?plainHttpRegistry,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'restartPolicy': ?restartPolicy,
      'securityContext': ?pulumi.Input.mapOptionalInputValue<ContainerGroupSecurityContext, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'securityGroupId': ?securityGroupId,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'status': ?status,
      'tags': ?tags,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ContainerGroupVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ContainerGroupState.fromMap(Map<String, dynamic> map) {
    return ContainerGroupState(
      acrRegistryInfos: map['acrRegistryInfos'] == null ? null : pulumi.Output.create<List<ContainerGroupAcrRegistryInfo>>(pulumi.Input.decodeList<ContainerGroupAcrRegistryInfo>(map['acrRegistryInfos'], (value) => ContainerGroupAcrRegistryInfo.fromMap((value as Map).cast<String, dynamic>()))),
      autoCreateEip: map['autoCreateEip'] == null ? null : pulumi.Output.create<bool>(map['autoCreateEip'] as bool),
      autoMatchImageCache: map['autoMatchImageCache'] == null ? null : pulumi.Output.create<bool>(map['autoMatchImageCache'] as bool),
      containerGroupName: map['containerGroupName'] == null ? null : pulumi.Output.create<String>(map['containerGroupName'] as String),
      containers: map['containers'] == null ? null : pulumi.Output.create<List<ContainerGroupContainer>>(pulumi.Input.decodeList<ContainerGroupContainer>(map['containers'], (value) => ContainerGroupContainer.fromMap((value as Map).cast<String, dynamic>()))),
      cpu: map['cpu'] == null ? null : pulumi.Output.create<double>(map['cpu'] as double),
      dnsConfig: map['dnsConfig'] == null ? null : pulumi.Output.create<ContainerGroupDnsConfig>(ContainerGroupDnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>())),
      dnsPolicy: map['dnsPolicy'] == null ? null : pulumi.Output.create<String>(map['dnsPolicy'] as String),
      eipBandwidth: map['eipBandwidth'] == null ? null : pulumi.Output.create<int>(map['eipBandwidth'] as int),
      eipInstanceId: map['eipInstanceId'] == null ? null : pulumi.Output.create<String>(map['eipInstanceId'] as String),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : pulumi.Output.create<int>(map['ephemeralStorage'] as int),
      hostAliases: map['hostAliases'] == null ? null : pulumi.Output.create<List<ContainerGroupHostAlias>>(pulumi.Input.decodeList<ContainerGroupHostAlias>(map['hostAliases'], (value) => ContainerGroupHostAlias.fromMap((value as Map).cast<String, dynamic>()))),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Output.create<List<ContainerGroupImageRegistryCredential>>(pulumi.Input.decodeList<ContainerGroupImageRegistryCredential>(map['imageRegistryCredentials'], (value) => ContainerGroupImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))),
      initContainers: map['initContainers'] == null ? null : pulumi.Output.create<List<ContainerGroupInitContainer>>(pulumi.Input.decodeList<ContainerGroupInitContainer>(map['initContainers'], (value) => ContainerGroupInitContainer.fromMap((value as Map).cast<String, dynamic>()))),
      insecureRegistry: map['insecureRegistry'] == null ? null : pulumi.Output.create<String>(map['insecureRegistry'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      internetIp: map['internetIp'] == null ? null : pulumi.Output.create<String>(map['internetIp'] as String),
      intranetIp: map['intranetIp'] == null ? null : pulumi.Output.create<String>(map['intranetIp'] as String),
      memory: map['memory'] == null ? null : pulumi.Output.create<double>(map['memory'] as double),
      plainHttpRegistry: map['plainHttpRegistry'] == null ? null : pulumi.Output.create<String>(map['plainHttpRegistry'] as String),
      ramRoleName: map['ramRoleName'] == null ? null : pulumi.Output.create<String>(map['ramRoleName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      restartPolicy: map['restartPolicy'] == null ? null : pulumi.Output.create<String>(map['restartPolicy'] as String),
      securityContext: map['securityContext'] == null ? null : pulumi.Output.create<ContainerGroupSecurityContext>(ContainerGroupSecurityContext.fromMap((map['securityContext'] as Map).cast<String, dynamic>())),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : pulumi.Output.create<double>(map['spotPriceLimit'] as double),
      spotStrategy: map['spotStrategy'] == null ? null : pulumi.Output.create<String>(map['spotStrategy'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : pulumi.Output.create<int>(map['terminationGracePeriodSeconds'] as int),
      volumes: map['volumes'] == null ? null : pulumi.Output.create<List<ContainerGroupVolume>>(pulumi.Input.decodeList<ContainerGroupVolume>(map['volumes'], (value) => ContainerGroupVolume.fromMap((value as Map).cast<String, dynamic>()))),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

