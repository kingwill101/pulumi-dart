// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_container.dart';
import 'get_container_groups_group_dns_config.dart';
import 'get_container_groups_group_eci_security_context.dart';
import 'get_container_groups_group_event.dart';
import 'get_container_groups_group_host_alias.dart';
import 'get_container_groups_group_init_container.dart';
import 'get_container_groups_group_volume.dart';

class GetContainerGroupsGroup {
  /// The id if ContainerGroup.
  final pulumi.Input<String> containerGroupId;

  /// The name of ContainerGroup.
  final pulumi.Input<String> containerGroupName;

  /// A list of containers. Each element contains the following attributes:
  final pulumi.Input<List<GetContainerGroupsGroupContainer>> containers;

  /// The amount of CPU resources allocated to the container group.
  final pulumi.Input<double> cpu;
  final pulumi.Input<int> discount;

  /// The DNS settings.
  final pulumi.Input<List<GetContainerGroupsGroupDnsConfig>> dnsConfigs;

  /// The security context of the container group.
  final pulumi.Input<List<GetContainerGroupsGroupEciSecurityContext>>
  eciSecurityContexts;

  /// The ID of the ENI instance.
  final pulumi.Input<String> eniInstanceId;

  /// The events of the container group. Maximum: `50`.
  final pulumi.Input<List<GetContainerGroupsGroupEvent>> events;

  /// The time when the container group failed to run due to overdue payments. The timestamp follows the UTC and RFC3339 formats.
  final pulumi.Input<String> expiredTime;

  /// The time when the container failed to run tasks. The timestamp follows the UTC and RFC3339 formats.
  final pulumi.Input<String> failedTime;

  /// The mapping between host names and IP addresses for a container in the container group.
  final pulumi.Input<List<GetContainerGroupsGroupHostAlias>> hostAliases;

  /// The ID of the Container Group.
  final pulumi.Input<String> id;

  /// A list of init containers. Each element contains the following attributes:
  final pulumi.Input<List<GetContainerGroupsGroupInitContainer>> initContainers;

  /// The type of the ECS instance.
  final pulumi.Input<String> instanceType;

  /// The public IP address of the container group.
  final pulumi.Input<String> internetIp;

  /// The internal IP address of the container group.
  final pulumi.Input<String> intranetIp;

  /// The IPv6 address.
  final pulumi.Input<String> ipv6Address;

  /// The amount of memory resources allocated to the container group.
  final pulumi.Input<double> memory;

  /// The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  final pulumi.Input<String> ramRoleName;

  /// The ID of the resource group to which the container group belongs. If you have not specified a resource group for the container group, it is added to the default resource group.
  final pulumi.Input<String> resourceGroupId;

  /// The restart policy of the container group.
  final pulumi.Input<String> restartPolicy;

  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;

  /// The status of container.
  final pulumi.Input<String> status;

  /// The time when all containers in the container group completed running the specified tasks. The timestamp follows the UTC and RFC 3339 formats. For example, 2018-08-02T15:00:00Z.
  final pulumi.Input<String> succeededTime;

  /// The tags attached to the container group. Each tag is a key-value pair. You can attach up to 20 tags to a container group.
  final pulumi.Input<Map<String, String>> tags;

  /// The information about the mounted volume. You can mount up to 20 volumes.
  final pulumi.Input<List<GetContainerGroupsGroupVolume>> volumes;

  /// The if of vpc.
  final pulumi.Input<String> vpcId;

  /// The vswitch id.
  final pulumi.Input<String> vswitchId;

  /// The IDs of the zones where the container groups are deployed. If this parameter is not set, the system automatically selects the zones. By default, no value is specified.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetContainerGroupsGroup].
  /// [containerGroupId] The id if ContainerGroup.
  /// [containerGroupName] The name of ContainerGroup.
  /// [containers] A list of containers. Each element contains the following attributes:
  /// [cpu] The amount of CPU resources allocated to the container group.
  /// [discount] Required.
  /// [dnsConfigs] The DNS settings.
  /// [eciSecurityContexts] The security context of the container group.
  /// [eniInstanceId] The ID of the ENI instance.
  /// [events] The events of the container group. Maximum: `50`.
  /// [expiredTime] The time when the container group failed to run due to overdue payments. The timestamp follows the UTC and RFC3339 formats.
  /// [failedTime] The time when the container failed to run tasks. The timestamp follows the UTC and RFC3339 formats.
  /// [hostAliases] The mapping between host names and IP addresses for a container in the container group.
  /// [id] The ID of the Container Group.
  /// [initContainers] A list of init containers. Each element contains the following attributes:
  /// [instanceType] The type of the ECS instance.
  /// [internetIp] The public IP address of the container group.
  /// [intranetIp] The internal IP address of the container group.
  /// [ipv6Address] The IPv6 address.
  /// [memory] The amount of memory resources allocated to the container group.
  /// [ramRoleName] The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  /// [resourceGroupId] The ID of the resource group to which the container group belongs. If you have not specified a resource group for the container group, it is added to the default resource group.
  /// [restartPolicy] The restart policy of the container group.
  /// [securityGroupId] The ID of the security group.
  /// [status] The status of container.
  /// [succeededTime] The time when all containers in the container group completed running the specified tasks. The timestamp follows the UTC and RFC 3339 formats. For example, 2018-08-02T15:00:00Z.
  /// [tags] The tags attached to the container group. Each tag is a key-value pair. You can attach up to 20 tags to a container group.
  /// [volumes] The information about the mounted volume. You can mount up to 20 volumes.
  /// [vpcId] The if of vpc.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The IDs of the zones where the container groups are deployed. If this parameter is not set, the system automatically selects the zones. By default, no value is specified.
  GetContainerGroupsGroup({
    required this.containerGroupId,
    required this.containerGroupName,
    required this.containers,
    required this.cpu,
    required this.discount,
    required this.dnsConfigs,
    required this.eciSecurityContexts,
    required this.eniInstanceId,
    required this.events,
    required this.expiredTime,
    required this.failedTime,
    required this.hostAliases,
    required this.id,
    required this.initContainers,
    required this.instanceType,
    required this.internetIp,
    required this.intranetIp,
    required this.ipv6Address,
    required this.memory,
    required this.ramRoleName,
    required this.resourceGroupId,
    required this.restartPolicy,
    required this.securityGroupId,
    required this.status,
    required this.succeededTime,
    required this.tags,
    required this.volumes,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupId': containerGroupId,
      'containerGroupName': containerGroupName,
      'containers':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupContainer>,
            List<Map<String, dynamic>>
          >(
            containers,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cpu': cpu,
      'discount': discount,
      'dnsConfigs':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupDnsConfig>,
            List<Map<String, dynamic>>
          >(
            dnsConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupDnsConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eciSecurityContexts':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupEciSecurityContext>,
            List<Map<String, dynamic>>
          >(
            eciSecurityContexts,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupEciSecurityContext,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eniInstanceId': eniInstanceId,
      'events':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupEvent>,
            List<Map<String, dynamic>>
          >(
            events,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupEvent,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'expiredTime': expiredTime,
      'failedTime': failedTime,
      'hostAliases':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupHostAlias>,
            List<Map<String, dynamic>>
          >(
            hostAliases,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupHostAlias,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'initContainers':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupInitContainer>,
            List<Map<String, dynamic>>
          >(
            initContainers,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupInitContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'instanceType': instanceType,
      'internetIp': internetIp,
      'intranetIp': intranetIp,
      'ipv6Address': ipv6Address,
      'memory': memory,
      'ramRoleName': ramRoleName,
      'resourceGroupId': resourceGroupId,
      'restartPolicy': restartPolicy,
      'securityGroupId': securityGroupId,
      'status': status,
      'succeededTime': succeededTime,
      'tags': tags,
      'volumes':
          pulumi.Input.mapInputValue<
            List<GetContainerGroupsGroupVolume>,
            List<Map<String, dynamic>>
          >(
            volumes,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerGroupsGroupVolume,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetContainerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroup(
      containerGroupId: pulumi.Input.fromValue(
        map['containerGroupId'] as String,
      ),
      containerGroupName: pulumi.Input.fromValue(
        map['containerGroupName'] as String,
      ),
      containers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupContainer>(
          map['containers']!,
          (value) => GetContainerGroupsGroupContainer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      discount: pulumi.Input.fromValue(map['discount'] as int),
      dnsConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupDnsConfig>(
          map['dnsConfigs']!,
          (value) => GetContainerGroupsGroupDnsConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      eciSecurityContexts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupEciSecurityContext>(
          map['eciSecurityContexts']!,
          (value) => GetContainerGroupsGroupEciSecurityContext.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      eniInstanceId: pulumi.Input.fromValue(map['eniInstanceId'] as String),
      events: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupEvent>(
          map['events']!,
          (value) => GetContainerGroupsGroupEvent.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      failedTime: pulumi.Input.fromValue(map['failedTime'] as String),
      hostAliases: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupHostAlias>(
          map['hostAliases']!,
          (value) => GetContainerGroupsGroupHostAlias.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      initContainers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupInitContainer>(
          map['initContainers']!,
          (value) => GetContainerGroupsGroupInitContainer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      intranetIp: pulumi.Input.fromValue(map['intranetIp'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as double),
      ramRoleName: pulumi.Input.fromValue(map['ramRoleName'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      restartPolicy: pulumi.Input.fromValue(map['restartPolicy'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      succeededTime: pulumi.Input.fromValue(map['succeededTime'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      volumes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetContainerGroupsGroupVolume>(
          map['volumes']!,
          (value) => GetContainerGroupsGroupVolume.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
