// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_acr_registry_info.dart';
import 'eci_scaling_configuration_container.dart';
import 'eci_scaling_configuration_dns_config_option.dart';
import 'eci_scaling_configuration_host_alias.dart';
import 'eci_scaling_configuration_image_registry_credential.dart';
import 'eci_scaling_configuration_init_container.dart';
import 'eci_scaling_configuration_security_context_sysctl.dart';
import 'eci_scaling_configuration_volume.dart';

/// Input properties used for looking up and filtering EciScalingConfiguration resources.
class EciScalingConfigurationState {
  /// Information about the Container Registry Enterprise Edition instance. See `acr_registry_infos` below for details.
  final pulumi.Input<List<EciScalingConfigurationAcrRegistryInfo>>?
  acrRegistryInfos;

  /// Whether active current eci scaling configuration in the specified scaling group. Note that only
  /// one configuration can be active. Default to `false`.
  final pulumi.Input<bool>? active;

  /// The duration in seconds relative to the startTime that the job may be active before the system tries to terminate it.
  final pulumi.Input<int>? activeDeadlineSeconds;

  /// Whether create eip automatically.
  final pulumi.Input<bool>? autoCreateEip;

  /// Whether to automatically match the image cache.
  final pulumi.Input<bool>? autoMatchImageCache;

  /// The name series of the elastic container instances created from the scaling configuration. If you want to use an ordered instance name, specify the value for this parameter in the following format: name_prefix(AUTO_INCREMENT)[begin_number,bits]name_suffix.
  /// name_prefix: the prefix of the hostname.
  /// (AUTO_INCREMENT): the sort method. This is a static field.
  /// begin_number: the start value of the sequential values. Valid values: 0 to 999999.
  /// bits: the number of digits in sequential values. Valid values: 1 to 6. If the number of digits in the specified begin_number value is greater than the value of the bits field, the bits field is automatically set to 6.
  /// name_suffix: the suffix of the hostname. This field is optional.
  final pulumi.Input<String>? containerGroupName;

  /// The list of containers. See `containers` below for details.
  final pulumi.Input<List<EciScalingConfigurationContainer>>? containers;

  /// Indicates whether the Cost Optimization feature is enabled. Valid values: true,false.
  final pulumi.Input<bool>? costOptimization;

  /// The amount of CPU resources allocated to the container group.
  final pulumi.Input<double>? cpu;

  /// The number of physical CPU cores. You can specify this parameter for only specific instance types.
  final pulumi.Input<int>? cpuOptionsCore;

  /// The number of threads per core. You can specify this parameter for only specific instance types. If you set this parameter to 1, Hyper-Threading is disabled.
  final pulumi.Input<int>? cpuOptionsThreadsPerCore;

  /// The description of data disk N. Valid values of N: 1 to 16. The description must be 2 to
  /// 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;

  /// The options. Each option is a name-value pair. The value in the name-value pair is optional.   See `dns_config_options` below for
  /// details.
  final pulumi.Input<List<EciScalingConfigurationDnsConfigOption>>?
  dnsConfigOptions;

  /// dns policy of contain group.
  final pulumi.Input<String>? dnsPolicy;

  /// egress bandwidth.
  final pulumi.Input<int>? egressBandwidth;

  /// Eip bandwidth.
  final pulumi.Input<int>? eipBandwidth;

  /// Enable sls log service.
  final pulumi.Input<bool>? enableSls;

  /// The size of ephemeral storage.
  final pulumi.Input<int>? ephemeralStorage;

  /// The eci scaling configuration will be deleted forcibly with deleting its scaling group.
  /// Default to false.
  final pulumi.Input<bool>? forceDelete;

  /// HostAliases. See `host_aliases` below.
  final pulumi.Input<List<EciScalingConfigurationHostAlias>>? hostAliases;

  /// Hostname of an ECI instance.
  final pulumi.Input<String>? hostName;

  /// The image registry credential.   See `image_registry_credentials` below for
  /// details.
  final pulumi.Input<List<EciScalingConfigurationImageRegistryCredential>>?
  imageRegistryCredentials;

  /// The ID of image cache.
  final pulumi.Input<String>? imageSnapshotId;

  /// Ingress bandwidth.
  final pulumi.Input<int>? ingressBandwidth;

  /// The list of initContainers. See `init_containers` below for details.
  final pulumi.Input<List<EciScalingConfigurationInitContainer>>?
  initContainers;

  /// The level of the instance family, which is used to filter instance types that meet the specified criteria. This parameter takes effect only if you set CostOptimization to true. Valid values: EntryLevel, EnterpriseLevel, CreditEntryLevel.
  final pulumi.Input<String>? instanceFamilyLevel;

  /// The specified ECS instance types. You can specify up to five ECS instance types.
  final pulumi.Input<List<String>>? instanceTypes;

  /// Number of IPv6 addresses.
  final pulumi.Input<int>? ipv6AddressCount;

  /// The weight of an ECI instance attached to the Server Group.
  final pulumi.Input<int>? loadBalancerWeight;

  /// The amount of memory resources allocated to the container group.
  final pulumi.Input<double>? memory;

  /// Specifies whether to overwrite the data. Valid values: true, false.
  final pulumi.Input<bool>? override;

  /// The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  final pulumi.Input<String>? ramRoleName;

  /// ID of resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// The restart policy of the container group. Default to `Always`.
  final pulumi.Input<String>? restartPolicy;

  /// Name shown for the scheduled task. which must contain 2-64 characters (
  /// English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number,
  /// underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is
  /// EciScalingConfigurationId.
  final pulumi.Input<String>? scalingConfigurationName;

  /// ID of the scaling group of a eci scaling configuration.
  final pulumi.Input<String>? scalingGroupId;

  /// The system information about the security context in which the elastic container instance is run.   See `security_context_sysctls` below for
  /// details.
  final pulumi.Input<List<EciScalingConfigurationSecurityContextSysctl>>?
  securityContextSysctls;

  /// ID of the security group used to create new instance. It is conflict
  /// with `security_group_ids`.
  final pulumi.Input<String>? securityGroupId;

  /// The maximum price hourly for spot instance.
  final pulumi.Input<double>? spotPriceLimit;

  /// The spot strategy for a Pay-As-You-Go instance. Valid values: `NoSpot`, `SpotAsPriceGo`
  /// , `SpotWithPriceLimit`.
  final pulumi.Input<String>? spotStrategy;

  /// A mapping of tags to assign to the resource. It will be applied for ECI instances finally.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "http://", or "https://". It cannot
  /// be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "http://", or "https://" It can be
  /// a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// The program's buffering time before closing.
  final pulumi.Input<int>? terminationGracePeriodSeconds;

  /// The list of volumes. See `volumes` below for details.
  final pulumi.Input<List<EciScalingConfigurationVolume>>? volumes;

  /// Creates a new [EciScalingConfigurationState].
  /// [acrRegistryInfos] Information about the Container Registry Enterprise Edition instance. See `acr_registry_infos` below for details.
  /// [active] Whether active current eci scaling configuration in the specified scaling group. Note that only
  /// [activeDeadlineSeconds] The duration in seconds relative to the startTime that the job may be active before the system tries to terminate it.
  /// [autoCreateEip] Whether create eip automatically.
  /// [autoMatchImageCache] Whether to automatically match the image cache.
  /// [containerGroupName] The name series of the elastic container instances created from the scaling configuration. If you want to use an ordered instance name, specify the value for this parameter in the following format: name_prefix(AUTO_INCREMENT)[begin_number,bits]name_suffix.
  /// [containers] The list of containers. See `containers` below for details.
  /// [costOptimization] Indicates whether the Cost Optimization feature is enabled. Valid values: true,false.
  /// [cpu] The amount of CPU resources allocated to the container group.
  /// [cpuOptionsCore] The number of physical CPU cores. You can specify this parameter for only specific instance types.
  /// [cpuOptionsThreadsPerCore] The number of threads per core. You can specify this parameter for only specific instance types. If you set this parameter to 1, Hyper-Threading is disabled.
  /// [description] The description of data disk N. Valid values of N: 1 to 16. The description must be 2 to
  /// [dnsConfigOptions] The options. Each option is a name-value pair. The value in the name-value pair is optional.   See `dns_config_options` below for
  /// [dnsPolicy] dns policy of contain group.
  /// [egressBandwidth] egress bandwidth.
  /// [eipBandwidth] Eip bandwidth.
  /// [enableSls] Enable sls log service.
  /// [ephemeralStorage] The size of ephemeral storage.
  /// [forceDelete] The eci scaling configuration will be deleted forcibly with deleting its scaling group.
  /// [hostAliases] HostAliases. See `host_aliases` below.
  /// [hostName] Hostname of an ECI instance.
  /// [imageRegistryCredentials] The image registry credential.   See `image_registry_credentials` below for
  /// [imageSnapshotId] The ID of image cache.
  /// [ingressBandwidth] Ingress bandwidth.
  /// [initContainers] The list of initContainers. See `init_containers` below for details.
  /// [instanceFamilyLevel] The level of the instance family, which is used to filter instance types that meet the specified criteria. This parameter takes effect only if you set CostOptimization to true. Valid values: EntryLevel, EnterpriseLevel, CreditEntryLevel.
  /// [instanceTypes] The specified ECS instance types. You can specify up to five ECS instance types.
  /// [ipv6AddressCount] Number of IPv6 addresses.
  /// [loadBalancerWeight] The weight of an ECI instance attached to the Server Group.
  /// [memory] The amount of memory resources allocated to the container group.
  /// [override] Specifies whether to overwrite the data. Valid values: true, false.
  /// [ramRoleName] The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  /// [resourceGroupId] ID of resource group.
  /// [restartPolicy] The restart policy of the container group. Default to `Always`.
  /// [scalingConfigurationName] Name shown for the scheduled task. which must contain 2-64 characters (
  /// [scalingGroupId] ID of the scaling group of a eci scaling configuration.
  /// [securityContextSysctls] The system information about the security context in which the elastic container instance is run.   See `security_context_sysctls` below for
  /// [securityGroupId] ID of the security group used to create new instance. It is conflict
  /// [spotPriceLimit] The maximum price hourly for spot instance.
  /// [spotStrategy] The spot strategy for a Pay-As-You-Go instance. Valid values: `NoSpot`, `SpotAsPriceGo`
  /// [tags] A mapping of tags to assign to the resource. It will be applied for ECI instances finally.
  /// [terminationGracePeriodSeconds] The program's buffering time before closing.
  /// [volumes] The list of volumes. See `volumes` below for details.
  EciScalingConfigurationState({
    this.acrRegistryInfos,
    this.active,
    this.activeDeadlineSeconds,
    this.autoCreateEip,
    this.autoMatchImageCache,
    this.containerGroupName,
    this.containers,
    this.costOptimization,
    this.cpu,
    this.cpuOptionsCore,
    this.cpuOptionsThreadsPerCore,
    this.description,
    this.dnsConfigOptions,
    this.dnsPolicy,
    this.egressBandwidth,
    this.eipBandwidth,
    this.enableSls,
    this.ephemeralStorage,
    this.forceDelete,
    this.hostAliases,
    this.hostName,
    this.imageRegistryCredentials,
    this.imageSnapshotId,
    this.ingressBandwidth,
    this.initContainers,
    this.instanceFamilyLevel,
    this.instanceTypes,
    this.ipv6AddressCount,
    this.loadBalancerWeight,
    this.memory,
    this.override,
    this.ramRoleName,
    this.resourceGroupId,
    this.restartPolicy,
    this.scalingConfigurationName,
    this.scalingGroupId,
    this.securityContextSysctls,
    this.securityGroupId,
    this.spotPriceLimit,
    this.spotStrategy,
    this.tags,
    this.terminationGracePeriodSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrRegistryInfos':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationAcrRegistryInfo>,
            List<Map<String, dynamic>>
          >(
            acrRegistryInfos,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationAcrRegistryInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'active': ?active,
      'activeDeadlineSeconds': ?activeDeadlineSeconds,
      'autoCreateEip': ?autoCreateEip,
      'autoMatchImageCache': ?autoMatchImageCache,
      'containerGroupName': ?containerGroupName,
      'containers':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationContainer>,
            List<Map<String, dynamic>>
          >(
            containers,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'costOptimization': ?costOptimization,
      'cpu': ?cpu,
      'cpuOptionsCore': ?cpuOptionsCore,
      'cpuOptionsThreadsPerCore': ?cpuOptionsThreadsPerCore,
      'description': ?description,
      'dnsConfigOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationDnsConfigOption>,
            List<Map<String, dynamic>>
          >(
            dnsConfigOptions,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationDnsConfigOption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dnsPolicy': ?dnsPolicy,
      'egressBandwidth': ?egressBandwidth,
      'eipBandwidth': ?eipBandwidth,
      'enableSls': ?enableSls,
      'ephemeralStorage': ?ephemeralStorage,
      'forceDelete': ?forceDelete,
      'hostAliases':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationHostAlias>,
            List<Map<String, dynamic>>
          >(
            hostAliases,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationHostAlias,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hostName': ?hostName,
      'imageRegistryCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationImageRegistryCredential>,
            List<Map<String, dynamic>>
          >(
            imageRegistryCredentials,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationImageRegistryCredential,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageSnapshotId': ?imageSnapshotId,
      'ingressBandwidth': ?ingressBandwidth,
      'initContainers':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationInitContainer>,
            List<Map<String, dynamic>>
          >(
            initContainers,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationInitContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'instanceFamilyLevel': ?instanceFamilyLevel,
      'instanceTypes': ?instanceTypes,
      'ipv6AddressCount': ?ipv6AddressCount,
      'loadBalancerWeight': ?loadBalancerWeight,
      'memory': ?memory,
      'override': ?override,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'restartPolicy': ?restartPolicy,
      'scalingConfigurationName': ?scalingConfigurationName,
      'scalingGroupId': ?scalingGroupId,
      'securityContextSysctls':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationSecurityContextSysctl>,
            List<Map<String, dynamic>>
          >(
            securityContextSysctls,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationSecurityContextSysctl,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securityGroupId': ?securityGroupId,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'tags': ?tags,
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'volumes':
          ?pulumi.Input.mapOptionalInputValue<
            List<EciScalingConfigurationVolume>,
            List<Map<String, dynamic>>
          >(
            volumes,
            (value) =>
                pulumi.Input.encodeList<
                  EciScalingConfigurationVolume,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EciScalingConfigurationState.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationState(
      acrRegistryInfos: (() {
        final guardedValue = map['acrRegistryInfos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationAcrRegistryInfo>(
            guardedValue,
            (value) => EciScalingConfigurationAcrRegistryInfo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      active: (() {
        final guardedValue = map['active'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      activeDeadlineSeconds: (() {
        final guardedValue = map['activeDeadlineSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      autoCreateEip: (() {
        final guardedValue = map['autoCreateEip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoMatchImageCache: (() {
        final guardedValue = map['autoMatchImageCache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      containerGroupName: (() {
        final guardedValue = map['containerGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containers: (() {
        final guardedValue = map['containers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationContainer>(
            guardedValue,
            (value) => EciScalingConfigurationContainer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      costOptimization: (() {
        final guardedValue = map['costOptimization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      cpuOptionsCore: (() {
        final guardedValue = map['cpuOptionsCore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpuOptionsThreadsPerCore: (() {
        final guardedValue = map['cpuOptionsThreadsPerCore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsConfigOptions: (() {
        final guardedValue = map['dnsConfigOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationDnsConfigOption>(
            guardedValue,
            (value) => EciScalingConfigurationDnsConfigOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dnsPolicy: (() {
        final guardedValue = map['dnsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      egressBandwidth: (() {
        final guardedValue = map['egressBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      eipBandwidth: (() {
        final guardedValue = map['eipBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableSls: (() {
        final guardedValue = map['enableSls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ephemeralStorage: (() {
        final guardedValue = map['ephemeralStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      forceDelete: (() {
        final guardedValue = map['forceDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostAliases: (() {
        final guardedValue = map['hostAliases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationHostAlias>(
            guardedValue,
            (value) => EciScalingConfigurationHostAlias.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageRegistryCredentials: (() {
        final guardedValue = map['imageRegistryCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<EciScalingConfigurationImageRegistryCredential>(
            guardedValue,
            (value) => EciScalingConfigurationImageRegistryCredential.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imageSnapshotId: (() {
        final guardedValue = map['imageSnapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressBandwidth: (() {
        final guardedValue = map['ingressBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      initContainers: (() {
        final guardedValue = map['initContainers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationInitContainer>(
            guardedValue,
            (value) => EciScalingConfigurationInitContainer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      instanceFamilyLevel: (() {
        final guardedValue = map['instanceFamilyLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceTypes: (() {
        final guardedValue = map['instanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipv6AddressCount: (() {
        final guardedValue = map['ipv6AddressCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancerWeight: (() {
        final guardedValue = map['loadBalancerWeight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      override: (() {
        final guardedValue = map['override'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ramRoleName: (() {
        final guardedValue = map['ramRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restartPolicy: (() {
        final guardedValue = map['restartPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingConfigurationName: (() {
        final guardedValue = map['scalingConfigurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingGroupId: (() {
        final guardedValue = map['scalingGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityContextSysctls: (() {
        final guardedValue = map['securityContextSysctls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationSecurityContextSysctl>(
            guardedValue,
            (value) => EciScalingConfigurationSecurityContextSysctl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spotPriceLimit: (() {
        final guardedValue = map['spotPriceLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      spotStrategy: (() {
        final guardedValue = map['spotStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      terminationGracePeriodSeconds: (() {
        final guardedValue = map['terminationGracePeriodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumes: (() {
        final guardedValue = map['volumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EciScalingConfigurationVolume>(
            guardedValue,
            (value) => EciScalingConfigurationVolume.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
