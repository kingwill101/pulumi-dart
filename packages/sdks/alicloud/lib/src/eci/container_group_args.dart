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

/// {@template pulumi_eci_container_group_container_group_args_doc}
/// The set of arguments for ContainerGroup.
/// {@endtemplate}
/// {@macro pulumi_eci_container_group_container_group_args_doc}
class ContainerGroupArgs {
  /// The ACR enterprise edition example properties. See `acr_registry_info` below.
  final pulumi.Input<List<ContainerGroupAcrRegistryInfo>>? acrRegistryInfos;
  /// Specifies whether to automatically create an EIP and bind the EIP to the elastic container instance.
  final pulumi.Input<bool>? autoCreateEip;
  /// Specifies whether to automatically match the image cache. Default value: `false`. Valid values: `true` and `false`.
  final pulumi.Input<bool>? autoMatchImageCache;
  /// The name of the container group.
  final pulumi.Input<String> containerGroupName;
  /// The list of containers. See `containers` below.
  final pulumi.Input<List<ContainerGroupContainer>> containers;
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
  final pulumi.Input<String> securityGroupId;
  /// The maximum hourly price of the ECI spot instance.
  final pulumi.Input<double>? spotPriceLimit;
  /// Filter the results by ECI spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  final pulumi.Input<String>? spotStrategy;
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
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ContainerGroupArgs].
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
  /// [memory] The amount of memory resources allocated to the container group.
  /// [plainHttpRegistry] The address of the self-built mirror warehouse. When creating an image cache from an image in a self-built image repository using the HTTP protocol, you need to configure this parameter so that the ECI uses the HTTP protocol to pull the image to avoid image pull failure due to different protocols.
  /// [ramRoleName] The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  /// [resourceGroupId] The ID of the resource group. **NOTE:** From version 1.208.0, `resource_group_id` can be modified.
  /// [restartPolicy] The restart policy of the container group. Valid values: `Always`, `Never`, `OnFailure`.
  /// [securityContext] The security context of the container group. See `security_context` below.
  /// [securityGroupId] The ID of the security group to which the container group belongs. Container groups within the same security group can access each other.
  /// [spotPriceLimit] The maximum hourly price of the ECI spot instance.
  /// [spotStrategy] Filter the results by ECI spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [terminationGracePeriodSeconds] The buffer time during which the program handles operations before the program stops. Unit: seconds.
  /// [volumes] The list of volumes. See `volumes` below.
  /// [vswitchId] The ID of the VSwitch. Currently, container groups can only be deployed in VPC networks. The number of IP addresses in the VSwitch CIDR block determines the maximum number of container groups that can be created in the VSwitch. Before you can create an ECI instance, plan the CIDR block of the VSwitch.
  /// [zoneId] The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  ContainerGroupArgs({
    this.acrRegistryInfos,
    this.autoCreateEip,
    this.autoMatchImageCache,
    required this.containerGroupName,
    required this.containers,
    this.cpu,
    this.dnsConfig,
    this.dnsPolicy,
    this.eipBandwidth,
    this.eipInstanceId,
    this.ephemeralStorage,
    this.hostAliases,
    this.imageRegistryCredentials,
    this.initContainers,
    this.insecureRegistry,
    this.instanceType,
    this.memory,
    this.plainHttpRegistry,
    this.ramRoleName,
    this.resourceGroupId,
    this.restartPolicy,
    this.securityContext,
    required this.securityGroupId,
    this.spotPriceLimit,
    this.spotStrategy,
    this.tags,
    this.terminationGracePeriodSeconds,
    this.volumes,
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrRegistryInfos': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupAcrRegistryInfo>, List<Map<String, dynamic>>>(acrRegistryInfos, (value) => pulumi.Input.encodeList<ContainerGroupAcrRegistryInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoCreateEip': ?autoCreateEip,
      'autoMatchImageCache': ?autoMatchImageCache,
      'containerGroupName': containerGroupName,
      'containers': pulumi.Input.mapInputValue<List<ContainerGroupContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerGroupContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'memory': ?memory,
      'plainHttpRegistry': ?plainHttpRegistry,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'restartPolicy': ?restartPolicy,
      'securityContext': ?pulumi.Input.mapOptionalInputValue<ContainerGroupSecurityContext, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'securityGroupId': securityGroupId,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'tags': ?tags,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ContainerGroupVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ContainerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ContainerGroupArgs(
      acrRegistryInfos: (() { final guardedValue = map['acrRegistryInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupAcrRegistryInfo>(guardedValue, (value) => ContainerGroupAcrRegistryInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoCreateEip: (() { final guardedValue = map['autoCreateEip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoMatchImageCache: (() { final guardedValue = map['autoMatchImageCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containerGroupName: pulumi.Input.fromValue(map['containerGroupName'] as String),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupContainer>(map['containers']!, (value) => ContainerGroupContainer.fromMap((value as Map).cast<String, dynamic>()))),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerGroupDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsPolicy: (() { final guardedValue = map['dnsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eipBandwidth: (() { final guardedValue = map['eipBandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      eipInstanceId: (() { final guardedValue = map['eipInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralStorage: (() { final guardedValue = map['ephemeralStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hostAliases: (() { final guardedValue = map['hostAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupHostAlias>(guardedValue, (value) => ContainerGroupHostAlias.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupImageRegistryCredential>(guardedValue, (value) => ContainerGroupImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupInitContainer>(guardedValue, (value) => ContainerGroupInitContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      insecureRegistry: (() { final guardedValue = map['insecureRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      plainHttpRegistry: (() { final guardedValue = map['plainHttpRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramRoleName: (() { final guardedValue = map['ramRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerGroupSecurityContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      spotPriceLimit: (() { final guardedValue = map['spotPriceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupVolume>(guardedValue, (value) => ContainerGroupVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

