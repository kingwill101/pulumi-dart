// ignore_for_file: unused_element, unnecessary_cast


class GetNatGatewaysGateway {
  /// The state of the NAT gateway.
  final String businessStatus;
  /// Indicates whether deletion protection is enabled.
  final bool deletionProtection;
  /// The description of the NAT gateway.
  final String description;
  /// Indicates whether the traffic monitoring feature is enabled.
  final bool ecsMetricEnabled;
  /// The time when the NAT gateway expires.
  final String expiredTime;
  /// The ID of the DNAT table.
  final List<String> forwardTableIds;
  /// The ID of the NAT gateway.
  final String id;
  /// The metering method of the NAT gateway.
  final String internetChargeType;
  /// The ip address of the bind eip.
  final List<String> ipLists;
  /// Name of the NAT gateway.
  final String name;
  /// The ID of the NAT gateway.
  final String natGatewayId;
  /// The name of NAT gateway.
  final String natGatewayName;
  /// The nat type of NAT gateway. Valid values `Enhanced` and `Normal`.
  final String natType;
  /// (Available in 1.137.0+) Indicates the type of the created NAT gateway. Valid values `internet` and `intranet`.
  final String networkType;
  /// The payment type of NAT gateway. Valid values `PayAsYouGo` and `Subscription`.
  final String paymentType;
  /// The resource group id of NAT gateway.
  final String resourceGroupId;
  /// The ID of the SNAT table that is associated with the NAT gateway.
  final List<String> snatTableIds;
  /// The specification of the NAT gateway.
  final String spec;
  /// The specification of NAT gateway. Valid values `Middle`, `Large`, `Small` and `XLarge.1`. Default value is `Small`.
  final String specification;
  /// The status of NAT gateway. Valid values `Available`, `Converting`, `Creating`, `Deleting` and `Modifying`.
  final String status;
  /// The tags of NAT gateway.
  final Map<String, String> tags;
  /// The ID of the VPC.
  final String vpcId;
  /// The ID of the vSwitch to which the NAT gateway belongs.
  final String vswitchId;

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
      businessStatus: map['businessStatus'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      ecsMetricEnabled: map['ecsMetricEnabled'] as bool,
      expiredTime: map['expiredTime'] as String,
      forwardTableIds: (map['forwardTableIds'] as List).cast<String>(),
      id: map['id'] as String,
      internetChargeType: map['internetChargeType'] as String,
      ipLists: (map['ipLists'] as List).cast<String>(),
      name: map['name'] as String,
      natGatewayId: map['natGatewayId'] as String,
      natGatewayName: map['natGatewayName'] as String,
      natType: map['natType'] as String,
      networkType: map['networkType'] as String,
      paymentType: map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      snatTableIds: (map['snatTableIds'] as List).cast<String>(),
      spec: map['spec'] as String,
      specification: map['specification'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

