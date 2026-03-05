import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_address_args.dart';
import 'eip_address_state.dart';

/// ## Import
///
/// EIP Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/eipAddress:EipAddress example <id>
/// ```
class EipAddress extends pulumi.CustomResource {
  /// The promotion code. This parameter is not required.
  late final pulumi.Output<String?> activityId;
  /// The EIP name.
  ///
  /// The name must be 1 to 128 characters in length and start with a letter, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-).
  ///
  /// &gt; **NOTE:**   You cannot specify this parameter if you create a subscription EIP.
  late final pulumi.Output<String> addressName;
  /// The ID of the EIP instance.
  late final pulumi.Output<String> allocationId;
  /// Specifies whether to enable automatic payment. Valid values:
  late final pulumi.Output<bool?> autoPay;
  /// The maximum bandwidth of the specified EIP. Unit: Mbit/s.
  /// - When `payment_type` is set to `PayAsYouGo` and `internet_charge_type` is set to `PayByBandwidth`, valid values for `bandwidth` are `1` to `500`.
  /// - When `payment_type` is set to `PayAsYouGo` and `internet_charge_type` is set to `PayByTraffic`, valid values for `bandwidth` are `1` to `200`.
  /// - When `payment_type` is set to `Subscription`, valid values for `bandwidth` are `1` to `1000`.
  ///
  /// Default value: `5` Mbit /s.
  late final pulumi.Output<String> bandwidth;
  /// The time when the EIP was created.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to enable deletion protection. Valid values:
  late final pulumi.Output<bool> deletionProtection;
  /// The description of the EIP.
  ///
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  ///
  /// &gt; **NOTE:**   You cannot specify this parameter if you create a subscription EIP.
  late final pulumi.Output<String> description;
  /// The status of fine-grained monitoring. Valid values:
  /// - `ON`
  /// - `OFF`
  late final pulumi.Output<String> highDefinitionMonitorLogStatus;
  /// . Field 'instance_charge_type' has been deprecated from provider version 1.126.0. New field 'payment_type' instead.
  late final pulumi.Output<String> instanceChargeType;
  /// The metering method of the EIP. Valid values:
  /// - `PayByBandwidth` (default): pay-by-bandwidth.
  /// - `PayByTraffic`: pay-by-data-transfer.
  ///
  /// When `payment_type` is set to `Subscription`, you must set `internet_charge_type` to `PayByBandwidth`.
  ///
  /// When `payment_type` is set to `PayAsYouGo`, set `internet_charge_type` to `PayByBandwidth` or `PayByTraffic`.
  late final pulumi.Output<String> internetChargeType;
  /// The IP address of the EIP. Supports a maximum of 50 EIPs.
  late final pulumi.Output<String> ipAddress;
  /// The line type. Valid values:
  /// - `BGP` (default): BGP (Multi-ISP) line The BGP (Multi-ISP) line is supported in all regions.
  /// - `BGP_PRO`: BGP (Multi-ISP) Pro line The BGP (Multi-ISP) Pro line is supported in the China (Hong Kong), Singapore, Malaysia (Kuala Lumpur), Philippines (Manila), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// For more information about the BGP (Multi-ISP) line and BGP (Multi-ISP) Pro line, see the "Line types" section of [What is EIP?](https://www.alibabacloud.com/help/en/doc-detail/32321.html)
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also choose one of the following values:
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the parameter to `BGP_FinanceCloud`.
  late final pulumi.Output<String> isp;
  /// The name of the Simple Log Service (SLS) project.
  late final pulumi.Output<String?> logProject;
  /// The name of the Logstore.
  late final pulumi.Output<String?> logStore;
  /// The association mode. Valid values:
  /// - `NAT` (default): NAT mode
  /// - `MULTI_BINDED`: multi-EIP-to-ENI mode
  /// - `BINDED`: cut-network interface controller mode
  late final pulumi.Output<String> mode;
  /// . Field 'name' has been deprecated from provider version 1.126.0. New field 'address_name' instead.
  late final pulumi.Output<String> name;
  /// The network type. By default, this value is set to `public`, which specifies the public network type.
  late final pulumi.Output<String> netmode;
  /// The billing method of the EIP. Valid values:
  /// - `Subscription`: subscription
  /// - `PayAsYouGo` (default): pay-as-you-go
  ///
  /// If `payment_type` is set to `Subscription`, set `internet_charge_type` to `PayByBandwidth`. If `payment_type` is set to `PayAsYouGo`, set `internet_charge_type` to `PayByBandwidth` or `PayByTraffic`.
  late final pulumi.Output<String> paymentType;
  /// Duration of purchase. When the value of `pricing_cycle` is `Month`, the value range of `period` is `1` to `9`. When the value of `pricing_cycle` is `Year`, the value range of `period` is `1` to `5`. If the value of the `payment_type` parameter is `Subscription`, this parameter is required. If the value of the `payment_type` parameter is `PayAsYouGo`, this parameter is left blank.
  late final pulumi.Output<int?> period;
  /// The billing cycle of the subscription EIP. Valid values:
  /// - `Month` (default)
  /// - `Year`
  ///
  /// If `payment_type` is set to `Subscription`, this parameter is required. If `payment_type` is set to `PayAsYouGo`, this parameter is not required.
  late final pulumi.Output<String?> pricingCycle;
  /// The ID of the IP address pool. The EIP is allocated from the IP address pool. By default, the IP address pool feature is unavailable. To use the IP address pool, apply for the privilege in the Quota Center console. For more information, see the "Request a quota increase in the Quota Center console" section in [Manage EIP quotas](https://www.alibabacloud.com/help/en/doc-detail/108213.html).
  late final pulumi.Output<String?> publicIpAddressPoolId;
  /// The ID of the resource group to which you want to move the resource.
  ///
  /// &gt; **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  late final pulumi.Output<String> resourceGroupId;
  /// Security protection level.
  /// - When the return is empty, the basic DDoS protection is specified.
  /// - When `antidos_enhanced` is returned, it indicates DDoS protection (enhanced version).
  late final pulumi.Output<List<String>?> securityProtectionTypes;
  /// The state of the EIP.
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The zone of the EIP. When the service type of the IP address pool specified by `PublicIpAddressPoolId` is CloudBox, the default value is the zone of the IP address pool. For more information, see [ListPublicIpAddressPools](https://www.alibabacloud.com/help/en/doc-detail/429433.html).
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> zone;

  /// Creates a new [EipAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EipAddress]. {@macro pulumi_ecs_eip_address_eip_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EipAddress(
    String name, {
    EipAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/eipAddress:EipAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activityId = registerOutput<String?>('activityId');
    addressName = registerOutput<String>('addressName');
    allocationId = registerOutput<String>('allocationId');
    autoPay = registerOutput<bool?>('autoPay');
    bandwidth = registerOutput<String>('bandwidth');
    createTime = registerOutput<String>('createTime');
    deletionProtection = registerOutput<bool>('deletionProtection');
    description = registerOutput<String>('description');
    highDefinitionMonitorLogStatus = registerOutput<String>('highDefinitionMonitorLogStatus');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    internetChargeType = registerOutput<String>('internetChargeType');
    ipAddress = registerOutput<String>('ipAddress');
    isp = registerOutput<String>('isp');
    logProject = registerOutput<String?>('logProject');
    logStore = registerOutput<String?>('logStore');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    netmode = registerOutput<String>('netmode');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    pricingCycle = registerOutput<String?>('pricingCycle');
    publicIpAddressPoolId = registerOutput<String?>('publicIpAddressPoolId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [EipAddress] resource's state with the given [name] and [id].
  static EipAddress get(
    String name,
    pulumi.Input<String> id, {
    EipAddressState? state,
  }) {
    return EipAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EipAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/eipAddress:EipAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activityId = registerOutput<String?>('activityId');
    addressName = registerOutput<String>('addressName');
    allocationId = registerOutput<String>('allocationId');
    autoPay = registerOutput<bool?>('autoPay');
    bandwidth = registerOutput<String>('bandwidth');
    createTime = registerOutput<String>('createTime');
    deletionProtection = registerOutput<bool>('deletionProtection');
    description = registerOutput<String>('description');
    highDefinitionMonitorLogStatus = registerOutput<String>('highDefinitionMonitorLogStatus');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    internetChargeType = registerOutput<String>('internetChargeType');
    ipAddress = registerOutput<String>('ipAddress');
    isp = registerOutput<String>('isp');
    logProject = registerOutput<String?>('logProject');
    logStore = registerOutput<String?>('logStore');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    netmode = registerOutput<String>('netmode');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    pricingCycle = registerOutput<String?>('pricingCycle');
    publicIpAddressPoolId = registerOutput<String?>('publicIpAddressPoolId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    zone = registerOutput<String>('zone');
  }
}
