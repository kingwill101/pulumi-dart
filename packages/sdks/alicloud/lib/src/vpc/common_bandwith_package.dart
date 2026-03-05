import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_bandwith_package_args.dart';
import 'common_bandwith_package_state.dart';

/// ## Import
///
/// EIP Bandwidth Plan (CBWP) Common Bandwidth Package can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/commonBandwithPackage:CommonBandwithPackage example <id>
/// ```
class CommonBandwithPackage extends pulumi.CustomResource {
  /// The maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// Valid values: `1` to `1000`. Default value: `1`.
  late final pulumi.Output<String> bandwidth;
  /// The description of the EIP bandwidth plan. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String> bandwidthPackageName;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to enable deletion protection. Valid values:
  late final pulumi.Output<bool?> deletionProtection;
  /// The description of the Internet Shared Bandwidth instance.
  /// The description must be 0 to 256 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// Specifies whether to forcefully delete the Internet Shared Bandwidth instance. Valid values:
  late final pulumi.Output<String?> force;
  /// Billing method of Internet Shared Bandwidth. Valid values:
  /// `PayByTraffic`: billed by primary traffic.
  ///
  /// - `PayByBandwidth` (default): Billing by bandwidth.
  /// - `PayBy95`: Billed as Enhanced 95.
  /// - `PayByDominantTraffic`: billed by primary traffic.
  late final pulumi.Output<String?> internetChargeType;
  /// The line type. Valid values:
  ///
  /// - `BGP` (default) All regions support BGP (Multi-ISP).
  /// - `BGP_PRO` BGP (Multi-ISP) Pro lines are available in the China (Hong Kong), Singapore, Japan (Tokyo), Philippines (Manila), Malaysia (Kuala Lumpur), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also use one of the following values:
  ///
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the value to `BGP_FinanceCloud`.
  late final pulumi.Output<String> isp;
  /// . Field 'name' has been deprecated from provider version 1.120.0. New field 'bandwidth_package_name' instead.
  late final pulumi.Output<String> name;
  /// The billing type of the Internet Shared Bandwidth instance. Valid values: `PayAsYouGo`, `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The percentage of the minimum bandwidth commitment. The value is only `20`.
  ///
  /// This parameter is required when the value of `InternetChargeType` is `PayBy95`.
  ///
  /// &gt; **NOTE:** This parameter is available only on the Alibaba Cloud China site.
  late final pulumi.Output<int> ratio;
  /// The pagination token that is used in the next request to retrieve a new page of results.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group to which you want to move the resource.
  ///
  /// &gt; **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  late final pulumi.Output<String> resourceGroupId;
  /// The edition of Anti-DDoS. If you do not set this parameter, Anti-DDoS Origin Basic is used. If you set the value to AntiDDoS_Enhanced, Anti-DDoS Pro(Premium) is used. It is valid when `internet_charge_type` is `PayBy95`.
  late final pulumi.Output<List<String>?> securityProtectionTypes;
  /// The status of the Internet Shared Bandwidth instance. Default value: `Available`.
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The zone of the Internet Shared Bandwidth instance. This parameter is required if you create an Internet Shared Bandwidth instance for a cloud box.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String?> zone;

  /// Creates a new [CommonBandwithPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommonBandwithPackage]. {@macro pulumi_vpc_common_bandwith_package_common_bandwith_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommonBandwithPackage(
    String name, {
    CommonBandwithPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/commonBandwithPackage:CommonBandwithPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<String>('bandwidth');
    bandwidthPackageName = registerOutput<String>('bandwidthPackageName');
    createTime = registerOutput<String>('createTime');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    force = registerOutput<String?>('force');
    internetChargeType = registerOutput<String?>('internetChargeType');
    isp = registerOutput<String>('isp');
    this.name = registerOutput<String>('name');
    paymentType = registerOutput<String>('paymentType');
    ratio = registerOutput<int>('ratio');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [CommonBandwithPackage] resource's state with the given [name] and [id].
  static CommonBandwithPackage get(
    String name,
    pulumi.Input<String> id, {
    CommonBandwithPackageState? state,
  }) {
    return CommonBandwithPackage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CommonBandwithPackage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/commonBandwithPackage:CommonBandwithPackage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<String>('bandwidth');
    bandwidthPackageName = registerOutput<String>('bandwidthPackageName');
    createTime = registerOutput<String>('createTime');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    force = registerOutput<String?>('force');
    internetChargeType = registerOutput<String?>('internetChargeType');
    isp = registerOutput<String>('isp');
    this.name = registerOutput<String>('name');
    paymentType = registerOutput<String>('paymentType');
    ratio = registerOutput<int>('ratio');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityProtectionTypes = registerOutput<List<String>?>('securityProtectionTypes');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    zone = registerOutput<String?>('zone');
  }
}
