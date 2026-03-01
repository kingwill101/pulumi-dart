// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_load_balancers_balancer_backend_server.dart';
import 'get_application_load_balancers_balancer_listener_ports_and_protocal.dart';
import 'get_application_load_balancers_balancer_listener_ports_and_protocol.dart';

class GetApplicationLoadBalancersBalancer {
  /// Service address of the SLBs.
  final String address;
  /// The address ip version. Valid values `ipv4` and `ipv6`.
  final String addressIpVersion;
  /// The address type of the SLB. Valid values `internet` and `intranet`.
  final String addressType;
  /// The auto release time.
  final int autoReleaseTime;
  /// The backend servers of the SLB.
  final List<GetApplicationLoadBalancersBalancerBackendServer> backendServers;
  /// The bandwidth of the SLB.
  final int bandwidth;
  /// The create time stamp of the SLB.
  final int createTimeStamp;
  /// Whether the SLB should delete protection.
  final String deleteProtection;
  /// The end time of the SLB.
  final String endTime;
  /// The end time stamp of the SLB.
  final int endTimeStamp;
  /// ID of the SLB.
  final String id;
  /// The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  final String internetChargeType;
  /// The listener ports and protocal of the SLB.
  final List<GetApplicationLoadBalancersBalancerListenerPortsAndProtocal> listenerPortsAndProtocals;
  /// The listener ports and protocol of the SLB.
  final List<GetApplicationLoadBalancersBalancerListenerPortsAndProtocol> listenerPortsAndProtocols;
  /// Thd ID of the SLB.
  final String loadBalancerId;
  /// The name of the SLB.
  final String loadBalancerName;
  /// The specification of the SLB.
  final String loadBalancerSpec;
  /// The master zone id of the SLB.
  final String masterZoneId;
  /// The reason of modification protection.
  final String modificationProtectionReason;
  /// The status of modification protection.
  final String modificationProtectionStatus;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final String networkType;
  /// The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  final String paymentType;
  /// Region ID the SLB belongs to.
  final String regionIdAlias;
  /// The renewal cyc unit of the SLB.
  final String renewalCycUnit;
  /// The renewal duration of the SLB.
  final int renewalDuration;
  /// The renewal status of the SLB.
  final String renewalStatus;
  /// The Id of resource group which SLB belongs.
  final String resourceGroupId;
  /// The slave zone id of the SLB.
  final String slaveZoneId;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final String status;
  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  final Map<String, String> tags;
  /// ID of the VPC linked to the SLBs.
  final String vpcId;
  /// ID of the vSwitch linked to the SLBs.
  final String vswitchId;

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
      'backendServers': pulumi.Input.encodeList<GetApplicationLoadBalancersBalancerBackendServer, Map<String, dynamic>>(backendServers, (value) => value.toMap()),
      'bandwidth': bandwidth,
      'createTimeStamp': createTimeStamp,
      'deleteProtection': deleteProtection,
      'endTime': endTime,
      'endTimeStamp': endTimeStamp,
      'id': id,
      'internetChargeType': internetChargeType,
      'listenerPortsAndProtocals': pulumi.Input.encodeList<GetApplicationLoadBalancersBalancerListenerPortsAndProtocal, Map<String, dynamic>>(listenerPortsAndProtocals, (value) => value.toMap()),
      'listenerPortsAndProtocols': pulumi.Input.encodeList<GetApplicationLoadBalancersBalancerListenerPortsAndProtocol, Map<String, dynamic>>(listenerPortsAndProtocols, (value) => value.toMap()),
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

  factory GetApplicationLoadBalancersBalancer.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersBalancer(
      address: map['address'] as String,
      addressIpVersion: map['addressIpVersion'] as String,
      addressType: map['addressType'] as String,
      autoReleaseTime: map['autoReleaseTime'] as int,
      backendServers: pulumi.Input.decodeList<GetApplicationLoadBalancersBalancerBackendServer>(map['backendServers'], (value) => GetApplicationLoadBalancersBalancerBackendServer.fromMap((value as Map).cast<String, dynamic>())),
      bandwidth: map['bandwidth'] as int,
      createTimeStamp: map['createTimeStamp'] as int,
      deleteProtection: map['deleteProtection'] as String,
      endTime: map['endTime'] as String,
      endTimeStamp: map['endTimeStamp'] as int,
      id: map['id'] as String,
      internetChargeType: map['internetChargeType'] as String,
      listenerPortsAndProtocals: pulumi.Input.decodeList<GetApplicationLoadBalancersBalancerListenerPortsAndProtocal>(map['listenerPortsAndProtocals'], (value) => GetApplicationLoadBalancersBalancerListenerPortsAndProtocal.fromMap((value as Map).cast<String, dynamic>())),
      listenerPortsAndProtocols: pulumi.Input.decodeList<GetApplicationLoadBalancersBalancerListenerPortsAndProtocol>(map['listenerPortsAndProtocols'], (value) => GetApplicationLoadBalancersBalancerListenerPortsAndProtocol.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerId: map['loadBalancerId'] as String,
      loadBalancerName: map['loadBalancerName'] as String,
      loadBalancerSpec: map['loadBalancerSpec'] as String,
      masterZoneId: map['masterZoneId'] as String,
      modificationProtectionReason: map['modificationProtectionReason'] as String,
      modificationProtectionStatus: map['modificationProtectionStatus'] as String,
      networkType: map['networkType'] as String,
      paymentType: map['paymentType'] as String,
      regionIdAlias: map['regionIdAlias'] as String,
      renewalCycUnit: map['renewalCycUnit'] as String,
      renewalDuration: map['renewalDuration'] as int,
      renewalStatus: map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      slaveZoneId: map['slaveZoneId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

