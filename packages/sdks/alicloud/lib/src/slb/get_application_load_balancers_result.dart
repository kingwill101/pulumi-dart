// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_load_balancers_balancer.dart';
import 'get_application_load_balancers_slb.dart';

/// Result data returned by getApplicationLoadBalancers.
class GetApplicationLoadBalancersResult {
  /// The IP address that the SLB instance uses to provide services.
  final String? address;
  /// The address ip version.
  final String? addressIpVersion;
  /// The address type.
  final String? addressType;
  /// A list of SLBs. Each element contains the following attributes:
  final List<GetApplicationLoadBalancersBalancer> balancers;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of slb IDs.
  final List<String> ids;
  /// The billing method of the Internet-facing SLB instance.
  final String? internetChargeType;
  /// The name of the SLB.
  final String? loadBalancerName;
  /// Master availability zone of the SLBs.
  final String? masterZoneId;
  final String? nameRegex;
  /// A list of slb names.
  final List<String> names;
  /// Network type of the SLB. Possible values: `vpc` and `classic`.
  final String? networkType;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? paymentType;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The ID of the Elastic Compute Service (ECS) instance that is specified as a backend server of the CLB instance.
  final String? serverId;
  final String? serverIntranetAddress;
  /// Slave availability zone of the SLBs.
  final String? slaveZoneId;
  final List<GetApplicationLoadBalancersSlb> slbs;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final String? status;
  /// The tags of the SLB.
  final Map<String, String>? tags;
  final int totalCount;
  /// ID of the VPC the SLB belongs to.
  final String? vpcId;
  /// ID of the vSwitch the SLB belongs to.
  final String? vswitchId;

  /// Creates a new [GetApplicationLoadBalancersResult].
  /// [address] The IP address that the SLB instance uses to provide services.
  /// [addressIpVersion] The address ip version.
  /// [addressType] The address type.
  /// [balancers] A list of SLBs. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of slb IDs.
  /// [internetChargeType] The billing method of the Internet-facing SLB instance.
  /// [loadBalancerName] The name of the SLB.
  /// [masterZoneId] Master availability zone of the SLBs.
  /// [nameRegex] Optional.
  /// [names] A list of slb names.
  /// [networkType] Network type of the SLB. Possible values: `vpc` and `classic`.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [serverId] The ID of the Elastic Compute Service (ECS) instance that is specified as a backend server of the CLB instance.
  /// [serverIntranetAddress] Optional.
  /// [slaveZoneId] Slave availability zone of the SLBs.
  /// [slbs] Required.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] The tags of the SLB.
  /// [totalCount] Required.
  /// [vpcId] ID of the VPC the SLB belongs to.
  /// [vswitchId] ID of the vSwitch the SLB belongs to.
  GetApplicationLoadBalancersResult({
    this.address,
    this.addressIpVersion,
    this.addressType,
    required this.balancers,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.internetChargeType,
    this.loadBalancerName,
    this.masterZoneId,
    this.nameRegex,
    required this.names,
    this.networkType,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.paymentType,
    this.resourceGroupId,
    this.serverId,
    this.serverIntranetAddress,
    this.slaveZoneId,
    required this.slbs,
    this.status,
    this.tags,
    required this.totalCount,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'balancers': pulumi.Input.encodeList<GetApplicationLoadBalancersBalancer, Map<String, dynamic>>(balancers, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'internetChargeType': ?internetChargeType,
      'loadBalancerName': ?loadBalancerName,
      'masterZoneId': ?masterZoneId,
      'nameRegex': ?nameRegex,
      'names': names,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serverId': ?serverId,
      'serverIntranetAddress': ?serverIntranetAddress,
      'slaveZoneId': ?slaveZoneId,
      'slbs': pulumi.Input.encodeList<GetApplicationLoadBalancersSlb, Map<String, dynamic>>(slbs, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetApplicationLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersResult(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressIpVersion: (() { final guardedValue = map['addressIpVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      balancers: pulumi.Input.decodeList<GetApplicationLoadBalancersBalancer>(map['balancers']!, (value) => GetApplicationLoadBalancersBalancer.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      masterZoneId: (() { final guardedValue = map['masterZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverIntranetAddress: (() { final guardedValue = map['serverIntranetAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slaveZoneId: (() { final guardedValue = map['slaveZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slbs: pulumi.Input.decodeList<GetApplicationLoadBalancersSlb>(map['slbs']!, (value) => GetApplicationLoadBalancersSlb.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalCount: map['totalCount'] as int,
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

