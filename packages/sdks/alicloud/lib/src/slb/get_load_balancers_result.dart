// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer.dart';
import 'get_load_balancers_slb.dart';

/// Result data returned by getLoadBalancers.
class GetLoadBalancersResult {
  /// Service address of the SLB.
  final String? address;
  final String? addressIpVersion;
  final String? addressType;
  final List<GetLoadBalancersBalancer> balancers;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of slb IDs.
  final List<String> ids;
  final String? internetChargeType;
  final String? loadBalancerName;
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
  final String? resourceGroupId;
  final String? serverId;
  final String? serverIntranetAddress;
  final String? slaveZoneId;
  /// A list of SLBs. Each element contains the following attributes:
  final List<GetLoadBalancersSlb> slbs;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final String? status;
  /// A map of tags assigned to the SLB instance.
  final Map<String, String>? tags;
  final int totalCount;
  /// ID of the VPC the SLB belongs to.
  final String? vpcId;
  /// ID of the vSwitch the SLB belongs to.
  final String? vswitchId;

  /// Creates a new [GetLoadBalancersResult].
  /// [address] Service address of the SLB.
  /// [addressIpVersion] Optional.
  /// [addressType] Optional.
  /// [balancers] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of slb IDs.
  /// [internetChargeType] Optional.
  /// [loadBalancerName] Optional.
  /// [masterZoneId] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of slb names.
  /// [networkType] Network type of the SLB. Possible values: `vpc` and `classic`.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] Optional.
  /// [resourceGroupId] Optional.
  /// [serverId] Optional.
  /// [serverIntranetAddress] Optional.
  /// [slaveZoneId] Optional.
  /// [slbs] A list of SLBs. Each element contains the following attributes:
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instance.
  /// [totalCount] Required.
  /// [vpcId] ID of the VPC the SLB belongs to.
  /// [vswitchId] ID of the vSwitch the SLB belongs to.
  GetLoadBalancersResult({
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
      'balancers': pulumi.Input.encodeList<GetLoadBalancersBalancer, Map<String, dynamic>>(balancers, (value) => value.toMap()),
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
      'slbs': pulumi.Input.encodeList<GetLoadBalancersSlb, Map<String, dynamic>>(slbs, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResult(
      address: map['address'] == null ? null : map['address']! as String,
      addressIpVersion: map['addressIpVersion'] == null ? null : map['addressIpVersion']! as String,
      addressType: map['addressType'] == null ? null : map['addressType']! as String,
      balancers: pulumi.Input.decodeList<GetLoadBalancersBalancer>(map['balancers'], (value) => GetLoadBalancersBalancer.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType']! as String,
      loadBalancerName: map['loadBalancerName'] == null ? null : map['loadBalancerName']! as String,
      masterZoneId: map['masterZoneId'] == null ? null : map['masterZoneId']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      networkType: map['networkType'] == null ? null : map['networkType']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      paymentType: map['paymentType'] == null ? null : map['paymentType']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      serverId: map['serverId'] == null ? null : map['serverId']! as String,
      serverIntranetAddress: map['serverIntranetAddress'] == null ? null : map['serverIntranetAddress']! as String,
      slaveZoneId: map['slaveZoneId'] == null ? null : map['slaveZoneId']! as String,
      slbs: pulumi.Input.decodeList<GetLoadBalancersSlb>(map['slbs'], (value) => GetLoadBalancersSlb.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

