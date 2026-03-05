import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';
import 'instance_system_disk.dart';

/// ## Import
///
/// Ens Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The number of instances created, with a minimum of 1 and a maximum of 100
  late final pulumi.Output<int?> amount;

  /// The automatic release time of the pay-as-you-go instance. According to the [ISO 8601] standard, UTC +0 time is used. The format is: 'yyyy-MM-ddTHH:mm:ssZ '.
  /// - If the second ('ss') value is not '00', it is automatically taken as the start of the current minute ('mm').
  /// - The minimum release time is one hour after the current time.
  late final pulumi.Output<String?> autoReleaseTime;

  /// Whether to automatically renew the logo. The default value is false. This parameter is invalid when you pay by volume.
  late final pulumi.Output<bool?> autoRenew;

  /// Whether to use vouchers. The default is to use. Value:
  /// - true (used)
  /// - false (not used)
  late final pulumi.Output<String?> autoUseCoupon;

  /// The billing cycle for instance computing resources. Only instance-level pay-as-you-go is supported. Value
  /// - Hour: hourly billing
  /// - Day: Daily billing
  /// - Month: monthly billing
  late final pulumi.Output<String?> billingCycle;

  /// Operator, required for regional scheduling. Optional values:
  /// - cmcc (mobile)
  /// - unicom
  /// - telecom
  late final pulumi.Output<String?> carrier;

  /// Data disk specifications See `data_disk` below.
  late final pulumi.Output<List<Map<String, dynamic>>> dataDisks;

  /// The node ID. When ScheduleAreaLevel is Region, EnsRegionId is required. When ScheduleAreaLevel is Big,Middle,Small, EnsRegionId is invalid.
  late final pulumi.Output<String> ensRegionId;

  /// Whether to force the identity when operating the instance. Optional values:
  /// - true: Force
  /// - false (default): non-mandatory
  late final pulumi.Output<String?> forceStop;

  /// The host name of the instance. Example value: test-HostName
  late final pulumi.Output<String> hostName;

  /// The image ID of the instance. The arm version card cannot be filled in. Other specifications are required. Example value: m-5si16wo6simkt267p8b7h * * * *
  late final pulumi.Output<String?> imageId;

  /// Whether the Payment type of the disk created with the instance is converted.
  late final pulumi.Output<bool?> includeDataDisks;

  /// The instance billing policy. Optional values:
  /// - instance: instance granularity (the subscription method does not support instance)
  /// - user: user Dimension (user is not transmitted or supported in the prepaid mode)
  late final pulumi.Output<String?> instanceChargeStrategy;

  /// The instance name. Example value: test-InstanceName. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-)
  ///
  /// The default value is the InstanceId of the instance.
  late final pulumi.Output<String> instanceName;

  /// The specification of the instance. Example value: ens.sn1.small
  late final pulumi.Output<String> instanceType;

  /// Instance bandwidth billing method. If the billing method can be selected for the first purchase, the subsequent value of this field will be processed by default according to the billing method selected for the first time. Optional values:
  /// - BandwidthByDay: Daily peak bandwidth
  /// - 95bandwidthbymonth: 95 peak bandwidth
  late final pulumi.Output<String?> internetChargeType;

  /// Maximum public network bandwidth. The field type is Long, and the precision may be lost during serialization/deserialization. Please note that the value must not be greater than 9007199254740991
  late final pulumi.Output<int> internetMaxBandwidthOut;

  /// The IP type. Value:
  /// - ipv4 (default):IPv4
  /// - ipv6:IPv6
  /// - ipv4Andipv6:IPv4 and IPv6
  late final pulumi.Output<String?> ipType;

  /// The key pair name.
  ///
  /// &gt; **NOTE:**  At least one of `Password`, `KeyPairName`, and **PasswordInherit.
  late final pulumi.Output<String?> keyPairName;

  /// The area code. Example value: 350000. Required for regional-level scheduling, invalid for node-level scheduling
  late final pulumi.Output<String?> netDistrictCode;

  /// The network ID of the instance. Can only be used in node-level scheduling
  late final pulumi.Output<String> netWorkId;

  /// The instance password. At least one of Password, KeyPairName, and PasswordInherit
  late final pulumi.Output<String?> password;

  /// Whether to use image preset password prompt: Password and KeyPairNamePasswordInherit must be passed
  late final pulumi.Output<bool?> passwordInherit;

  /// Instance payment method. Since v1.230.0, you can modify payment_type. Optional values:
  /// - Subscription: prepaid, annual and monthly
  /// - PayAsYouGo: Pay by volume
  late final pulumi.Output<String> paymentType;

  /// The duration of the resource purchase. Value method:
  /// - If PeriodUnit is set to Day, Period can only be set to 3.
  /// - If PeriodUnit is set to Month, Period can be set to 1-9,12.
  late final pulumi.Output<int?> period;

  /// The unit of time for purchasing resources. Value:
  /// - Month (default): purchase by Month
  /// - Day: buy by Day
  late final pulumi.Output<String?> periodUnit;

  /// The private IP address. Can only be used for node-level scheduling. If a private IP address is specified, the number of instances can only be one, and both the private IP address and the vSwitch ID are not empty, the private IP address takes effect.
  late final pulumi.Output<String> privateIpAddress;

  /// Whether to assign a public IP identifier. Value:
  /// - true (default): Assign
  /// - false: do not assign
  late final pulumi.Output<bool?> publicIpIdentification;

  /// Scheduling level, through which node-level scheduling or area scheduling is performed. Optional values:
  /// - Node-level scheduling: Region
  /// - Regional scheduling: Big (region),Middle (province),Small (city)
  late final pulumi.Output<String> scheduleAreaLevel;

  /// Scheduling price policy. If it is not filled in, the default priority is low price. Value:
  /// - PriceLowPriority
  /// - PriceLowPriority (priority low price)
  late final pulumi.Output<String?> schedulingPriceStrategy;

  /// Scheduling policy. Optional values:
  /// - Concentrate for node-level scheduling
  /// - For regional scheduling, Concentrate, Disperse
  late final pulumi.Output<String?> schedulingStrategy;

  /// ID of the security group to which the instance belongs.
  late final pulumi.Output<String> securityId;

  /// The bidding strategy for pay-as-you-go instances. It takes effect when the value of the 'InstanceChargeType' parameter is set to 'PostPaid. Value range:
  /// - NoSpot: normal pay-as-you-go instance (default)
  /// - SpotAsPriceGo: The system automatically bids, following the actual price in the current market.
  late final pulumi.Output<String?> spotStrategy;

  /// Status of the instance
  late final pulumi.Output<String> status;

  /// System Disk Specification. SystemDisk is a non-required parameter when InstanceType is x86_pm,x86_bmi,x86_bm,pc_bmi, or arm_bmi. SystemDisk is a required parameter when instanceType is other specification families. See `system_disk` below.
  late final pulumi.Output<InstanceSystemDisk?> systemDisk;

  /// The tag bound to the instance
  late final pulumi.Output<Map<String, String>?> tags;

  /// Indicates whether to add an ordered suffix to HostName and InstanceName. The ordered suffix starts from 001 and cannot exceed 999.
  late final pulumi.Output<bool?> uniqueSuffix;

  /// User-defined data, maximum support 16KB. You can pass in the UserData information. The UserData is encoded in Base64 format.
  late final pulumi.Output<String?> userData;

  /// The ID of the vSwitch to which the instance belongs. Can only be used in node-level scheduling
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_ens_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amount = registerOutput<int?>('amount');
    autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoUseCoupon = registerOutput<String?>('autoUseCoupon');
    billingCycle = registerOutput<String?>('billingCycle');
    carrier = registerOutput<String?>('carrier');
    dataDisks = registerOutput<List<Map<String, dynamic>>>('dataDisks');
    ensRegionId = registerOutput<String>('ensRegionId');
    forceStop = registerOutput<String?>('forceStop');
    hostName = registerOutput<String>('hostName');
    imageId = registerOutput<String?>('imageId');
    includeDataDisks = registerOutput<bool?>('includeDataDisks');
    instanceChargeStrategy = registerOutput<String?>('instanceChargeStrategy');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    ipType = registerOutput<String?>('ipType');
    keyPairName = registerOutput<String?>('keyPairName');
    netDistrictCode = registerOutput<String?>('netDistrictCode');
    netWorkId = registerOutput<String>('netWorkId');
    password = registerOutput<String?>('password');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    publicIpIdentification = registerOutput<bool?>('publicIpIdentification');
    scheduleAreaLevel = registerOutput<String>('scheduleAreaLevel');
    schedulingPriceStrategy = registerOutput<String?>(
      'schedulingPriceStrategy',
    );
    schedulingStrategy = registerOutput<String?>('schedulingStrategy');
    securityId = registerOutput<String>('securityId');
    spotStrategy = registerOutput<String?>('spotStrategy');
    status = registerOutput<String>('status');
    systemDisk = registerOutput<InstanceSystemDisk?>(
      'systemDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceSystemDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueSuffix = registerOutput<bool?>('uniqueSuffix');
    userData = registerOutput<String?>('userData');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amount = registerOutput<int?>('amount');
    autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoUseCoupon = registerOutput<String?>('autoUseCoupon');
    billingCycle = registerOutput<String?>('billingCycle');
    carrier = registerOutput<String?>('carrier');
    dataDisks = registerOutput<List<Map<String, dynamic>>>('dataDisks');
    ensRegionId = registerOutput<String>('ensRegionId');
    forceStop = registerOutput<String?>('forceStop');
    hostName = registerOutput<String>('hostName');
    imageId = registerOutput<String?>('imageId');
    includeDataDisks = registerOutput<bool?>('includeDataDisks');
    instanceChargeStrategy = registerOutput<String?>('instanceChargeStrategy');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    ipType = registerOutput<String?>('ipType');
    keyPairName = registerOutput<String?>('keyPairName');
    netDistrictCode = registerOutput<String?>('netDistrictCode');
    netWorkId = registerOutput<String>('netWorkId');
    password = registerOutput<String?>('password');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    publicIpIdentification = registerOutput<bool?>('publicIpIdentification');
    scheduleAreaLevel = registerOutput<String>('scheduleAreaLevel');
    schedulingPriceStrategy = registerOutput<String?>(
      'schedulingPriceStrategy',
    );
    schedulingStrategy = registerOutput<String?>('schedulingStrategy');
    securityId = registerOutput<String>('securityId');
    spotStrategy = registerOutput<String?>('spotStrategy');
    status = registerOutput<String>('status');
    systemDisk = registerOutput<InstanceSystemDisk?>(
      'systemDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceSystemDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueSuffix = registerOutput<bool?>('uniqueSuffix');
    userData = registerOutput<String?>('userData');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
