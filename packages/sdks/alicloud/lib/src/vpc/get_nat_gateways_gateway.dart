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
      businessStatus: pulumi.Input.fromValue(map['businessStatus'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      ecsMetricEnabled: pulumi.Input.fromValue(map['ecsMetricEnabled'] as bool),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      forwardTableIds: pulumi.Input.fromValue((map['forwardTableIds'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      internetChargeType: pulumi.Input.fromValue(map['internetChargeType'] as String),
      ipLists: pulumi.Input.fromValue((map['ipLists'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      natGatewayName: pulumi.Input.fromValue(map['natGatewayName'] as String),
      natType: pulumi.Input.fromValue(map['natType'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      snatTableIds: pulumi.Input.fromValue((map['snatTableIds'] as List).cast<String>()),
      spec: pulumi.Input.fromValue(map['spec'] as String),
      specification: pulumi.Input.fromValue(map['specification'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

