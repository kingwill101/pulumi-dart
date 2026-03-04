// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_load_balancers_balancer_backend_server.dart';
import 'get_application_load_balancers_balancer_listener_ports_and_protocal.dart';
import 'get_application_load_balancers_balancer_listener_ports_and_protocol.dart';

class GetApplicationLoadBalancersBalancer {
  /// Service address of the SLBs.
  final pulumi.Input<String> address;

  /// The address ip version. Valid values `ipv4` and `ipv6`.
  final pulumi.Input<String> addressIpVersion;

  /// The address type of the SLB. Valid values `internet` and `intranet`.
  final pulumi.Input<String> addressType;

  /// The auto release time.
  final pulumi.Input<int> autoReleaseTime;

  /// The backend servers of the SLB.
  final pulumi.Input<List<GetApplicationLoadBalancersBalancerBackendServer>>
  backendServers;

  /// The bandwidth of the SLB.
  final pulumi.Input<int> bandwidth;

  /// The create time stamp of the SLB.
  final pulumi.Input<int> createTimeStamp;

  /// Whether the SLB should delete protection.
  final pulumi.Input<String> deleteProtection;

  /// The end time of the SLB.
  final pulumi.Input<String> endTime;

  /// The end time stamp of the SLB.
  final pulumi.Input<int> endTimeStamp;

  /// ID of the SLB.
  final pulumi.Input<String> id;

  /// The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  final pulumi.Input<String> internetChargeType;

  /// The listener ports and protocal of the SLB.
  final pulumi.Input<
    List<GetApplicationLoadBalancersBalancerListenerPortsAndProtocal>
  >
  listenerPortsAndProtocals;

  /// The listener ports and protocol of the SLB.
  final pulumi.Input<
    List<GetApplicationLoadBalancersBalancerListenerPortsAndProtocol>
  >
  listenerPortsAndProtocols;

  /// Thd ID of the SLB.
  final pulumi.Input<String> loadBalancerId;

  /// The name of the SLB.
  final pulumi.Input<String> loadBalancerName;

  /// The specification of the SLB.
  final pulumi.Input<String> loadBalancerSpec;

  /// The master zone id of the SLB.
  final pulumi.Input<String> masterZoneId;

  /// The reason of modification protection.
  final pulumi.Input<String> modificationProtectionReason;

  /// The status of modification protection.
  final pulumi.Input<String> modificationProtectionStatus;

  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final pulumi.Input<String> networkType;

  /// The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String> paymentType;

  /// Region ID the SLB belongs to.
  final pulumi.Input<String> regionIdAlias;

  /// The renewal cyc unit of the SLB.
  final pulumi.Input<String> renewalCycUnit;

  /// The renewal duration of the SLB.
  final pulumi.Input<int> renewalDuration;

  /// The renewal status of the SLB.
  final pulumi.Input<String> renewalStatus;

  /// The Id of resource group which SLB belongs.
  final pulumi.Input<String> resourceGroupId;

  /// The slave zone id of the SLB.
  final pulumi.Input<String> slaveZoneId;

  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final pulumi.Input<String> status;

  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  final pulumi.Input<Map<String, String>> tags;

  /// ID of the VPC linked to the SLBs.
  final pulumi.Input<String> vpcId;

  /// ID of the vSwitch linked to the SLBs.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetApplicationLoadBalancersBalancer].
  /// [address] Service address of the SLBs.
  /// [addressIpVersion] The address ip version. Valid values `ipv4` and `ipv6`.
  /// [addressType] The address type of the SLB. Valid values `internet` and `intranet`.
  /// [autoReleaseTime] The auto release time.
  /// [backendServers] The backend servers of the SLB.
  /// [bandwidth] The bandwidth of the SLB.
  /// [createTimeStamp] The create time stamp of the SLB.
  /// [deleteProtection] Whether the SLB should delete protection.
  /// [endTime] The end time of the SLB.
  /// [endTimeStamp] The end time stamp of the SLB.
  /// [id] ID of the SLB.
  /// [internetChargeType] The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  /// [listenerPortsAndProtocals] The listener ports and protocal of the SLB.
  /// [listenerPortsAndProtocols] The listener ports and protocol of the SLB.
  /// [loadBalancerId] Thd ID of the SLB.
  /// [loadBalancerName] The name of the SLB.
  /// [loadBalancerSpec] The specification of the SLB.
  /// [masterZoneId] The master zone id of the SLB.
  /// [modificationProtectionReason] The reason of modification protection.
  /// [modificationProtectionStatus] The status of modification protection.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [paymentType] The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  /// [regionIdAlias] Region ID the SLB belongs to.
  /// [renewalCycUnit] The renewal cyc unit of the SLB.
  /// [renewalDuration] The renewal duration of the SLB.
  /// [renewalStatus] The renewal status of the SLB.
  /// [resourceGroupId] The Id of resource group which SLB belongs.
  /// [slaveZoneId] The slave zone id of the SLB.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetApplicationLoadBalancersBalancer({
    required this.address,
    required this.addressIpVersion,
    required this.addressType,
    required this.autoReleaseTime,
    required this.backendServers,
    required this.bandwidth,
    required this.createTimeStamp,
    required this.deleteProtection,
    required this.endTime,
    required this.endTimeStamp,
    required this.id,
    required this.internetChargeType,
    required this.listenerPortsAndProtocals,
    required this.listenerPortsAndProtocols,
    required this.loadBalancerId,
    required this.loadBalancerName,
    required this.loadBalancerSpec,
    required this.masterZoneId,
    required this.modificationProtectionReason,
    required this.modificationProtectionStatus,
    required this.networkType,
    required this.paymentType,
    required this.regionIdAlias,
    required this.renewalCycUnit,
    required this.renewalDuration,
    required this.renewalStatus,
    required this.resourceGroupId,
    required this.slaveZoneId,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'addressIpVersion': addressIpVersion,
      'addressType': addressType,
      'autoReleaseTime': autoReleaseTime,
      'backendServers':
          pulumi.Input.mapInputValue<
            List<GetApplicationLoadBalancersBalancerBackendServer>,
            List<Map<String, dynamic>>
          >(
            backendServers,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationLoadBalancersBalancerBackendServer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bandwidth': bandwidth,
      'createTimeStamp': createTimeStamp,
      'deleteProtection': deleteProtection,
      'endTime': endTime,
      'endTimeStamp': endTimeStamp,
      'id': id,
      'internetChargeType': internetChargeType,
      'listenerPortsAndProtocals':
          pulumi.Input.mapInputValue<
            List<GetApplicationLoadBalancersBalancerListenerPortsAndProtocal>,
            List<Map<String, dynamic>>
          >(
            listenerPortsAndProtocals,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationLoadBalancersBalancerListenerPortsAndProtocal,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'listenerPortsAndProtocols':
          pulumi.Input.mapInputValue<
            List<GetApplicationLoadBalancersBalancerListenerPortsAndProtocol>,
            List<Map<String, dynamic>>
          >(
            listenerPortsAndProtocols,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationLoadBalancersBalancerListenerPortsAndProtocol,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerId': loadBalancerId,
      'loadBalancerName': loadBalancerName,
      'loadBalancerSpec': loadBalancerSpec,
      'masterZoneId': masterZoneId,
      'modificationProtectionReason': modificationProtectionReason,
      'modificationProtectionStatus': modificationProtectionStatus,
      'networkType': networkType,
      'paymentType': paymentType,
      'regionIdAlias': regionIdAlias,
      'renewalCycUnit': renewalCycUnit,
      'renewalDuration': renewalDuration,
      'renewalStatus': renewalStatus,
      'resourceGroupId': resourceGroupId,
      'slaveZoneId': slaveZoneId,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetApplicationLoadBalancersBalancer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationLoadBalancersBalancer(
      address: pulumi.Input.fromValue(map['address'] as String),
      addressIpVersion: pulumi.Input.fromValue(
        map['addressIpVersion'] as String,
      ),
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
      autoReleaseTime: pulumi.Input.fromValue(map['autoReleaseTime'] as int),
      backendServers: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetApplicationLoadBalancersBalancerBackendServer>(
          map['backendServers']!,
          (value) => GetApplicationLoadBalancersBalancerBackendServer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      createTimeStamp: pulumi.Input.fromValue(map['createTimeStamp'] as int),
      deleteProtection: pulumi.Input.fromValue(
        map['deleteProtection'] as String,
      ),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      endTimeStamp: pulumi.Input.fromValue(map['endTimeStamp'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      listenerPortsAndProtocals: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetApplicationLoadBalancersBalancerListenerPortsAndProtocal
        >(
          map['listenerPortsAndProtocals']!,
          (value) =>
              GetApplicationLoadBalancersBalancerListenerPortsAndProtocal.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      listenerPortsAndProtocols: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetApplicationLoadBalancersBalancerListenerPortsAndProtocol
        >(
          map['listenerPortsAndProtocols']!,
          (value) =>
              GetApplicationLoadBalancersBalancerListenerPortsAndProtocol.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      loadBalancerName: pulumi.Input.fromValue(
        map['loadBalancerName'] as String,
      ),
      loadBalancerSpec: pulumi.Input.fromValue(
        map['loadBalancerSpec'] as String,
      ),
      masterZoneId: pulumi.Input.fromValue(map['masterZoneId'] as String),
      modificationProtectionReason: pulumi.Input.fromValue(
        map['modificationProtectionReason'] as String,
      ),
      modificationProtectionStatus: pulumi.Input.fromValue(
        map['modificationProtectionStatus'] as String,
      ),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      regionIdAlias: pulumi.Input.fromValue(map['regionIdAlias'] as String),
      renewalCycUnit: pulumi.Input.fromValue(map['renewalCycUnit'] as String),
      renewalDuration: pulumi.Input.fromValue(map['renewalDuration'] as int),
      renewalStatus: pulumi.Input.fromValue(map['renewalStatus'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      slaveZoneId: pulumi.Input.fromValue(map['slaveZoneId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}
