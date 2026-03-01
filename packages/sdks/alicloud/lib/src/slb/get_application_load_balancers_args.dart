// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_application_load_balancers_get_application_load_balancers_args_doc}
/// Arguments for getApplicationLoadBalancers.
/// {@endtemplate}
/// {@macro pulumi_slb_get_application_load_balancers_get_application_load_balancers_args_doc}
class GetApplicationLoadBalancersArgs {
  /// Service address of the SLBs.
  final pulumi.Input<String>? address;
  /// The address ip version. Valid values `ipv4` and `ipv6`.
  final pulumi.Input<String>? addressIpVersion;
  /// The address type of the SLB. Valid values `internet` and `intranet`.
  final pulumi.Input<String>? addressType;
  final pulumi.Input<bool>? enableDetails;
  /// A list of SLBs IDs.
  final pulumi.Input<List<String>>? ids;
  /// The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  final pulumi.Input<String>? internetChargeType;
  /// The name of the SLB.
  final pulumi.Input<String>? loadBalancerName;
  /// The master zone id of the SLB.
  final pulumi.Input<String>? masterZoneId;
  /// A regex string to filter results by SLB name.
  final pulumi.Input<String>? nameRegex;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final pulumi.Input<String>? networkType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The Id of resource group which SLB belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The server ID.
  final pulumi.Input<String>? serverId;
  /// The server intranet address.
  final pulumi.Input<String>? serverIntranetAddress;
  /// The slave zone id of the SLB.
  final pulumi.Input<String>? slaveZoneId;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC linked to the SLBs.
  final pulumi.Input<String>? vpcId;
  /// ID of the vSwitch linked to the SLBs.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetApplicationLoadBalancersArgs].
  /// [address] Service address of the SLBs.
  /// [addressIpVersion] The address ip version. Valid values `ipv4` and `ipv6`.
  /// [addressType] The address type of the SLB. Valid values `internet` and `intranet`.
  /// [enableDetails] Optional.
  /// [ids] A list of SLBs IDs.
  /// [internetChargeType] The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  /// [loadBalancerName] The name of the SLB.
  /// [masterZoneId] The master zone id of the SLB.
  /// [nameRegex] A regex string to filter results by SLB name.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  /// [resourceGroupId] The Id of resource group which SLB belongs.
  /// [serverId] The server ID.
  /// [serverIntranetAddress] The server intranet address.
  /// [slaveZoneId] The slave zone id of the SLB.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetApplicationLoadBalancersArgs({
    pulumi.Output<String>? address,
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<String>? addressType,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<String>? masterZoneId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? serverIntranetAddress,
    pulumi.Output<String>? slaveZoneId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      masterZoneId = pulumi.Input.asOptionalInput<String>(masterZoneId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      serverIntranetAddress = pulumi.Input.asOptionalInput<String>(serverIntranetAddress),
      slaveZoneId = pulumi.Input.asOptionalInput<String>(slaveZoneId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'internetChargeType': ?internetChargeType,
      'loadBalancerName': ?loadBalancerName,
      'masterZoneId': ?masterZoneId,
      'nameRegex': ?nameRegex,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serverId': ?serverId,
      'serverIntranetAddress': ?serverIntranetAddress,
      'slaveZoneId': ?slaveZoneId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetApplicationLoadBalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersArgs(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      addressType: map['addressType'] == null ? null : pulumi.Output.create<String>(map['addressType'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      masterZoneId: map['masterZoneId'] == null ? null : pulumi.Output.create<String>(map['masterZoneId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      serverIntranetAddress: map['serverIntranetAddress'] == null ? null : pulumi.Output.create<String>(map['serverIntranetAddress'] as String),
      slaveZoneId: map['slaveZoneId'] == null ? null : pulumi.Output.create<String>(map['slaveZoneId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

