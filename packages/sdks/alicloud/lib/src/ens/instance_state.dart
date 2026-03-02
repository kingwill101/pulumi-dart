// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_data_disk.dart';
import 'instance_system_disk.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The number of instances created, with a minimum of 1 and a maximum of 100
  final pulumi.Input<int>? amount;
  /// The automatic release time of the pay-as-you-go instance. According to the [ISO 8601] standard, UTC +0 time is used. The format is: 'yyyy-MM-ddTHH:mm:ssZ '.
  /// - If the second ('ss') value is not '00', it is automatically taken as the start of the current minute ('mm').
  /// - The minimum release time is one hour after the current time.
  final pulumi.Input<String>? autoReleaseTime;
  /// Whether to automatically renew the logo. The default value is false. This parameter is invalid when you pay by volume.
  final pulumi.Input<bool>? autoRenew;
  /// Whether to use vouchers. The default is to use. Value:
  /// - true (used)
  /// - false (not used)
  final pulumi.Input<String>? autoUseCoupon;
  /// The billing cycle for instance computing resources. Only instance-level pay-as-you-go is supported. Value
  /// - Hour: hourly billing
  /// - Day: Daily billing
  /// - Month: monthly billing
  final pulumi.Input<String>? billingCycle;
  /// Operator, required for regional scheduling. Optional values:
  /// - cmcc (mobile)
  /// - unicom
  /// - telecom
  final pulumi.Input<String>? carrier;
  /// Data disk specifications See `data_disk` below.
  final pulumi.Input<List<InstanceDataDisk>>? dataDisks;
  /// The node ID. When ScheduleAreaLevel is Region, EnsRegionId is required. When ScheduleAreaLevel is Big,Middle,Small, EnsRegionId is invalid.
  final pulumi.Input<String>? ensRegionId;
  /// Whether to force the identity when operating the instance. Optional values:
  /// - true: Force
  /// - false (default): non-mandatory
  final pulumi.Input<String>? forceStop;
  /// The host name of the instance. Example value: test-HostName
  final pulumi.Input<String>? hostName;
  /// The image ID of the instance. The arm version card cannot be filled in. Other specifications are required. Example value: m-5si16wo6simkt267p8b7h * * * *
  final pulumi.Input<String>? imageId;
  /// Whether the Payment type of the disk created with the instance is converted.
  final pulumi.Input<bool>? includeDataDisks;
  /// The instance billing policy. Optional values:
  /// - instance: instance granularity (the subscription method does not support instance)
  /// - user: user Dimension (user is not transmitted or supported in the prepaid mode)
  final pulumi.Input<String>? instanceChargeStrategy;
  /// The instance name. Example value: test-InstanceName. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-)
  ///
  /// The default value is the InstanceId of the instance.
  final pulumi.Input<String>? instanceName;
  /// The specification of the instance. Example value: ens.sn1.small
  final pulumi.Input<String>? instanceType;
  /// Instance bandwidth billing method. If the billing method can be selected for the first purchase, the subsequent value of this field will be processed by default according to the billing method selected for the first time. Optional values:
  /// - BandwidthByDay: Daily peak bandwidth
  /// - 95bandwidthbymonth: 95 peak bandwidth
  final pulumi.Input<String>? internetChargeType;
  /// Maximum public network bandwidth. The field type is Long, and the precision may be lost during serialization/deserialization. Please note that the value must not be greater than 9007199254740991
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// The IP type. Value:
  /// - ipv4 (default):IPv4
  /// - ipv6:IPv6
  /// - ipv4Andipv6:IPv4 and IPv6
  final pulumi.Input<String>? ipType;
  /// The key pair name.
  ///
  /// > **NOTE:**  At least one of `Password`, `KeyPairName`, and **PasswordInherit.
  final pulumi.Input<String>? keyPairName;
  /// The area code. Example value: 350000. Required for regional-level scheduling, invalid for node-level scheduling
  final pulumi.Input<String>? netDistrictCode;
  /// The network ID of the instance. Can only be used in node-level scheduling
  final pulumi.Input<String>? netWorkId;
  /// The instance password. At least one of Password, KeyPairName, and PasswordInherit
  final pulumi.Input<String>? password;
  /// Whether to use image preset password prompt: Password and KeyPairNamePasswordInherit must be passed
  final pulumi.Input<bool>? passwordInherit;
  /// Instance payment method. Since v1.230.0, you can modify payment_type. Optional values:
  /// - Subscription: prepaid, annual and monthly
  /// - PayAsYouGo: Pay by volume
  final pulumi.Input<String>? paymentType;
  /// The duration of the resource purchase. Value method:
  /// - If PeriodUnit is set to Day, Period can only be set to 3.
  /// - If PeriodUnit is set to Month, Period can be set to 1-9,12.
  final pulumi.Input<int>? period;
  /// The unit of time for purchasing resources. Value:
  /// - Month (default): purchase by Month
  /// - Day: buy by Day
  final pulumi.Input<String>? periodUnit;
  /// The private IP address. Can only be used for node-level scheduling. If a private IP address is specified, the number of instances can only be one, and both the private IP address and the vSwitch ID are not empty, the private IP address takes effect.
  final pulumi.Input<String>? privateIpAddress;
  /// Whether to assign a public IP identifier. Value:
  /// - true (default): Assign
  /// - false: do not assign
  final pulumi.Input<bool>? publicIpIdentification;
  /// Scheduling level, through which node-level scheduling or area scheduling is performed. Optional values:
  /// - Node-level scheduling: Region
  /// - Regional scheduling: Big (region),Middle (province),Small (city)
  final pulumi.Input<String>? scheduleAreaLevel;
  /// Scheduling price policy. If it is not filled in, the default priority is low price. Value:
  /// - PriceLowPriority
  /// - PriceLowPriority (priority low price)
  final pulumi.Input<String>? schedulingPriceStrategy;
  /// Scheduling policy. Optional values:
  /// - Concentrate for node-level scheduling
  /// - For regional scheduling, Concentrate, Disperse
  final pulumi.Input<String>? schedulingStrategy;
  /// ID of the security group to which the instance belongs.
  final pulumi.Input<String>? securityId;
  /// The bidding strategy for pay-as-you-go instances. It takes effect when the value of the 'InstanceChargeType' parameter is set to 'PostPaid. Value range:
  /// - NoSpot: normal pay-as-you-go instance (default)
  /// - SpotAsPriceGo: The system automatically bids, following the actual price in the current market.
  final pulumi.Input<String>? spotStrategy;
  /// Status of the instance
  final pulumi.Input<String>? status;
  /// System Disk Specification. SystemDisk is a non-required parameter when InstanceType is x86_pm,x86_bmi,x86_bm,pc_bmi, or arm_bmi. SystemDisk is a required parameter when instanceType is other specification families. See `system_disk` below.
  final pulumi.Input<InstanceSystemDisk>? systemDisk;
  /// The tag bound to the instance
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates whether to add an ordered suffix to HostName and InstanceName. The ordered suffix starts from 001 and cannot exceed 999.
  final pulumi.Input<bool>? uniqueSuffix;
  /// User-defined data, maximum support 16KB. You can pass in the UserData information. The UserData is encoded in Base64 format.
  final pulumi.Input<String>? userData;
  /// The ID of the vSwitch to which the instance belongs. Can only be used in node-level scheduling
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceState].
  /// [amount] The number of instances created, with a minimum of 1 and a maximum of 100
  /// [autoReleaseTime] The automatic release time of the pay-as-you-go instance. According to the [ISO 8601] standard, UTC +0 time is used. The format is: 'yyyy-MM-ddTHH:mm:ssZ '.
  /// [autoRenew] Whether to automatically renew the logo. The default value is false. This parameter is invalid when you pay by volume.
  /// [autoUseCoupon] Whether to use vouchers. The default is to use. Value:
  /// [billingCycle] The billing cycle for instance computing resources. Only instance-level pay-as-you-go is supported. Value
  /// [carrier] Operator, required for regional scheduling. Optional values:
  /// [dataDisks] Data disk specifications See `data_disk` below.
  /// [ensRegionId] The node ID. When ScheduleAreaLevel is Region, EnsRegionId is required. When ScheduleAreaLevel is Big,Middle,Small, EnsRegionId is invalid.
  /// [forceStop] Whether to force the identity when operating the instance. Optional values:
  /// [hostName] The host name of the instance. Example value: test-HostName
  /// [imageId] The image ID of the instance. The arm version card cannot be filled in. Other specifications are required. Example value: m-5si16wo6simkt267p8b7h * * * *
  /// [includeDataDisks] Whether the Payment type of the disk created with the instance is converted.
  /// [instanceChargeStrategy] The instance billing policy. Optional values:
  /// [instanceName] The instance name. Example value: test-InstanceName. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-)
  /// [instanceType] The specification of the instance. Example value: ens.sn1.small
  /// [internetChargeType] Instance bandwidth billing method. If the billing method can be selected for the first purchase, the subsequent value of this field will be processed by default according to the billing method selected for the first time. Optional values:
  /// [internetMaxBandwidthOut] Maximum public network bandwidth. The field type is Long, and the precision may be lost during serialization/deserialization. Please note that the value must not be greater than 9007199254740991
  /// [ipType] The IP type. Value:
  /// [keyPairName] The key pair name.
  /// [netDistrictCode] The area code. Example value: 350000. Required for regional-level scheduling, invalid for node-level scheduling
  /// [netWorkId] The network ID of the instance. Can only be used in node-level scheduling
  /// [password] The instance password. At least one of Password, KeyPairName, and PasswordInherit
  /// [passwordInherit] Whether to use image preset password prompt: Password and KeyPairNamePasswordInherit must be passed
  /// [paymentType] Instance payment method. Since v1.230.0, you can modify payment_type. Optional values:
  /// [period] The duration of the resource purchase. Value method:
  /// [periodUnit] The unit of time for purchasing resources. Value:
  /// [privateIpAddress] The private IP address. Can only be used for node-level scheduling. If a private IP address is specified, the number of instances can only be one, and both the private IP address and the vSwitch ID are not empty, the private IP address takes effect.
  /// [publicIpIdentification] Whether to assign a public IP identifier. Value:
  /// [scheduleAreaLevel] Scheduling level, through which node-level scheduling or area scheduling is performed. Optional values:
  /// [schedulingPriceStrategy] Scheduling price policy. If it is not filled in, the default priority is low price. Value:
  /// [schedulingStrategy] Scheduling policy. Optional values:
  /// [securityId] ID of the security group to which the instance belongs.
  /// [spotStrategy] The bidding strategy for pay-as-you-go instances. It takes effect when the value of the 'InstanceChargeType' parameter is set to 'PostPaid. Value range:
  /// [status] Status of the instance
  /// [systemDisk] System Disk Specification. SystemDisk is a non-required parameter when InstanceType is x86_pm,x86_bmi,x86_bm,pc_bmi, or arm_bmi. SystemDisk is a required parameter when instanceType is other specification families. See `system_disk` below.
  /// [tags] The tag bound to the instance
  /// [uniqueSuffix] Indicates whether to add an ordered suffix to HostName and InstanceName. The ordered suffix starts from 001 and cannot exceed 999.
  /// [userData] User-defined data, maximum support 16KB. You can pass in the UserData information. The UserData is encoded in Base64 format.
  /// [vswitchId] The ID of the vSwitch to which the instance belongs. Can only be used in node-level scheduling
  InstanceState({
    this.amount,
    this.autoReleaseTime,
    this.autoRenew,
    this.autoUseCoupon,
    this.billingCycle,
    this.carrier,
    this.dataDisks,
    this.ensRegionId,
    this.forceStop,
    this.hostName,
    this.imageId,
    this.includeDataDisks,
    this.instanceChargeStrategy,
    this.instanceName,
    this.instanceType,
    this.internetChargeType,
    this.internetMaxBandwidthOut,
    this.ipType,
    this.keyPairName,
    this.netDistrictCode,
    this.netWorkId,
    this.password,
    this.passwordInherit,
    this.paymentType,
    this.period,
    this.periodUnit,
    this.privateIpAddress,
    this.publicIpIdentification,
    this.scheduleAreaLevel,
    this.schedulingPriceStrategy,
    this.schedulingStrategy,
    this.securityId,
    this.spotStrategy,
    this.status,
    this.systemDisk,
    this.tags,
    this.uniqueSuffix,
    this.userData,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'autoReleaseTime': ?autoReleaseTime,
      'autoRenew': ?autoRenew,
      'autoUseCoupon': ?autoUseCoupon,
      'billingCycle': ?billingCycle,
      'carrier': ?carrier,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<InstanceDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ensRegionId': ?ensRegionId,
      'forceStop': ?forceStop,
      'hostName': ?hostName,
      'imageId': ?imageId,
      'includeDataDisks': ?includeDataDisks,
      'instanceChargeStrategy': ?instanceChargeStrategy,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'ipType': ?ipType,
      'keyPairName': ?keyPairName,
      'netDistrictCode': ?netDistrictCode,
      'netWorkId': ?netWorkId,
      'password': ?password,
      'passwordInherit': ?passwordInherit,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'privateIpAddress': ?privateIpAddress,
      'publicIpIdentification': ?publicIpIdentification,
      'scheduleAreaLevel': ?scheduleAreaLevel,
      'schedulingPriceStrategy': ?schedulingPriceStrategy,
      'schedulingStrategy': ?schedulingStrategy,
      'securityId': ?securityId,
      'spotStrategy': ?spotStrategy,
      'status': ?status,
      'systemDisk': ?pulumi.Input.mapOptionalInputValue<InstanceSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
      'tags': ?tags,
      'uniqueSuffix': ?uniqueSuffix,
      'userData': ?userData,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      amount: map['amount'] == null ? null : (map['amount']! as int).input(),
      autoReleaseTime: map['autoReleaseTime'] == null ? null : (map['autoReleaseTime']! as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      autoUseCoupon: map['autoUseCoupon'] == null ? null : (map['autoUseCoupon']! as String).input(),
      billingCycle: map['billingCycle'] == null ? null : (map['billingCycle']! as String).input(),
      carrier: map['carrier'] == null ? null : (map['carrier']! as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<InstanceDataDisk>(map['dataDisks']!, (value) => InstanceDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId']! as String).input(),
      forceStop: map['forceStop'] == null ? null : (map['forceStop']! as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      includeDataDisks: map['includeDataDisks'] == null ? null : (map['includeDataDisks']! as bool).input(),
      instanceChargeStrategy: map['instanceChargeStrategy'] == null ? null : (map['instanceChargeStrategy']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType']! as String).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut']! as int).input(),
      ipType: map['ipType'] == null ? null : (map['ipType']! as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName']! as String).input(),
      netDistrictCode: map['netDistrictCode'] == null ? null : (map['netDistrictCode']! as String).input(),
      netWorkId: map['netWorkId'] == null ? null : (map['netWorkId']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      passwordInherit: map['passwordInherit'] == null ? null : (map['passwordInherit']! as bool).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      publicIpIdentification: map['publicIpIdentification'] == null ? null : (map['publicIpIdentification']! as bool).input(),
      scheduleAreaLevel: map['scheduleAreaLevel'] == null ? null : (map['scheduleAreaLevel']! as String).input(),
      schedulingPriceStrategy: map['schedulingPriceStrategy'] == null ? null : (map['schedulingPriceStrategy']! as String).input(),
      schedulingStrategy: map['schedulingStrategy'] == null ? null : (map['schedulingStrategy']! as String).input(),
      securityId: map['securityId'] == null ? null : (map['securityId']! as String).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      systemDisk: map['systemDisk'] == null ? null : (InstanceSystemDisk.fromMap((map['systemDisk']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      uniqueSuffix: map['uniqueSuffix'] == null ? null : (map['uniqueSuffix']! as bool).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

