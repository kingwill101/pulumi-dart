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
      address: map['address'] == null ? null : map['address']! as String,
      addressIpVersion: map['addressIpVersion'] == null ? null : map['addressIpVersion']! as String,
      addressType: map['addressType'] == null ? null : map['addressType']! as String,
      balancers: pulumi.Input.decodeList<GetApplicationLoadBalancersBalancer>(map['balancers'], (value) => GetApplicationLoadBalancersBalancer.fromMap((value as Map).cast<String, dynamic>())),
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
      slbs: pulumi.Input.decodeList<GetApplicationLoadBalancersSlb>(map['slbs'], (value) => GetApplicationLoadBalancersSlb.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

