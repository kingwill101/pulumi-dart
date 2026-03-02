// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNatGatewaysGateway {
  /// The state of the NAT gateway.
  final pulumi.Input<String> businessStatus;
  /// Indicates whether deletion protection is enabled.
  final pulumi.Input<bool> deletionProtection;
  /// The description of the NAT gateway.
  final pulumi.Input<String> description;
  /// Indicates whether the traffic monitoring feature is enabled.
  final pulumi.Input<bool> ecsMetricEnabled;
  /// The time when the NAT gateway expires.
  final pulumi.Input<String> expiredTime;
  /// The ID of the DNAT table.
  final pulumi.Input<List<String>> forwardTableIds;
  /// The ID of the NAT gateway.
  final pulumi.Input<String> id;
  /// The metering method of the NAT gateway.
  final pulumi.Input<String> internetChargeType;
  /// The ip address of the bind eip.
  final pulumi.Input<List<String>> ipLists;
  /// Name of the NAT gateway.
  final pulumi.Input<String> name;
  /// The ID of the NAT gateway.
  final pulumi.Input<String> natGatewayId;
  /// The name of NAT gateway.
  final pulumi.Input<String> natGatewayName;
  /// The nat type of NAT gateway. Valid values `Enhanced` and `Normal`.
  final pulumi.Input<String> natType;
  /// (Available in 1.137.0+) Indicates the type of the created NAT gateway. Valid values `internet` and `intranet`.
  final pulumi.Input<String> networkType;
  /// The payment type of NAT gateway. Valid values `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The resource group id of NAT gateway.
  final pulumi.Input<String> resourceGroupId;
  /// The ID of the SNAT table that is associated with the NAT gateway.
  final pulumi.Input<List<String>> snatTableIds;
  /// The specification of the NAT gateway.
  final pulumi.Input<String> spec;
  /// The specification of NAT gateway. Valid values `Middle`, `Large`, `Small` and `XLarge.1`. Default value is `Small`.
  final pulumi.Input<String> specification;
  /// The status of NAT gateway. Valid values `Available`, `Converting`, `Creating`, `Deleting` and `Modifying`.
  final pulumi.Input<String> status;
  /// The tags of NAT gateway.
  final pulumi.Input<Map<String, String>> tags;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch to which the NAT gateway belongs.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetNatGatewaysGateway].
  /// [businessStatus] The state of the NAT gateway.
  /// [deletionProtection] Indicates whether deletion protection is enabled.
  /// [description] The description of the NAT gateway.
  /// [ecsMetricEnabled] Indicates whether the traffic monitoring feature is enabled.
  /// [expiredTime] The time when the NAT gateway expires.
  /// [forwardTableIds] The ID of the DNAT table.
  /// [id] The ID of the NAT gateway.
  /// [internetChargeType] The metering method of the NAT gateway.
  /// [ipLists] The ip address of the bind eip.
  /// [name] Name of the NAT gateway.
  /// [natGatewayId] The ID of the NAT gateway.
  /// [natGatewayName] The name of NAT gateway.
  /// [natType] The nat type of NAT gateway. Valid values `Enhanced` and `Normal`.
  /// [networkType] (Available in 1.137.0+) Indicates the type of the created NAT gateway. Valid values `internet` and `intranet`.
  /// [paymentType] The payment type of NAT gateway. Valid values `PayAsYouGo` and `Subscription`.
  /// [resourceGroupId] The resource group id of NAT gateway.
  /// [snatTableIds] The ID of the SNAT table that is associated with the NAT gateway.
  /// [spec] The specification of the NAT gateway.
  /// [specification] The specification of NAT gateway. Valid values `Middle`, `Large`, `Small` and `XLarge.1`. Default value is `Small`.
  /// [status] The status of NAT gateway. Valid values `Available`, `Converting`, `Creating`, `Deleting` and `Modifying`.
  /// [tags] The tags of NAT gateway.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the vSwitch to which the NAT gateway belongs.
  GetNatGatewaysGateway({
    required this.businessStatus,
    required this.deletionProtection,
    required this.description,
    required this.ecsMetricEnabled,
    required this.expiredTime,
    required this.forwardTableIds,
    required this.id,
    required this.internetChargeType,
    required this.ipLists,
    required this.name,
    required this.natGatewayId,
    required this.natGatewayName,
    required this.natType,
    required this.networkType,
    required this.paymentType,
    required this.resourceGroupId,
    required this.snatTableIds,
    required this.spec,
    required this.specification,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': businessStatus,
      'deletionProtection': deletionProtection,
      'description': description,
      'ecsMetricEnabled': ecsMetricEnabled,
      'expiredTime': expiredTime,
      'forwardTableIds': forwardTableIds,
      'id': id,
      'internetChargeType': internetChargeType,
      'ipLists': ipLists,
      'name': name,
      'natGatewayId': natGatewayId,
      'natGatewayName': natGatewayName,
      'natType': natType,
      'networkType': networkType,
      'paymentType': paymentType,
      'resourceGroupId': resourceGroupId,
      'snatTableIds': snatTableIds,
      'spec': spec,
      'specification': specification,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetNatGatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetNatGatewaysGateway(
      businessStatus: (map['businessStatus'] as String).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      description: (map['description'] as String).input(),
      ecsMetricEnabled: (map['ecsMetricEnabled'] as bool).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      forwardTableIds: ((map['forwardTableIds'] as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      internetChargeType: (map['internetChargeType'] as String).input(),
      ipLists: ((map['ipLists'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      natGatewayId: (map['natGatewayId'] as String).input(),
      natGatewayName: (map['natGatewayName'] as String).input(),
      natType: (map['natType'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      snatTableIds: ((map['snatTableIds'] as List).cast<String>()).input(),
      spec: (map['spec'] as String).input(),
      specification: (map['specification'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

