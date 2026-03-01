import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';

/// ## Import
///
/// WAF instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:waf/instance:Instance default waf-cn-132435
/// ```
class Instance extends pulumi.CustomResource {
  /// Specify whether big screen is supported. Valid values: ["0", "1"]. "0" for false and "1" for true.
  late final pulumi.Output<String> bigScreen;
  /// Specify the number of exclusive WAF IP addresses.
  late final pulumi.Output<String> exclusiveIpPackage;
  /// The extra bandwidth. Unit: Mbit/s.
  late final pulumi.Output<String> extBandwidth;
  /// The number of extra domains.
  late final pulumi.Output<String> extDomainPackage;
  /// Log storage size. Unit: T. Valid values: [3, 5, 10, 20, 50].
  late final pulumi.Output<String> logStorage;
  /// Log storage period. Unit: day. Valid values: [180, 360].
  late final pulumi.Output<String> logTime;
  /// Type of configuration change. Valid value: Upgrade.
  late final pulumi.Output<String?> modifyType;
  /// Subscription plan:
  /// * China site customers can purchase the following versions of China Mainland region, valid values: ["version_3", "version_4", "version_5"].
  /// * China site customers can purchase the following versions of International region, valid values: ["version_pro_asia", "version_business_asia", "version_enterprise_asia"]
  /// * International site customers can purchase the following versions of China Mainland region: ["version_pro_china", "version_business_china", "version_enterprise_china"]
  /// * International site customers can purchase the following versions of International region: ["version_pro", "version_business", "version_enterprise"].
  late final pulumi.Output<String> packageCode;
  /// Service time of Web Application Firewall.
  late final pulumi.Output<int?> period;
  /// Specify whether professional service is supported. Valid values: ["true", "false"]
  late final pulumi.Output<String> prefessionalService;
  /// The instance region ID.
  late final pulumi.Output<String?> region;
  /// Renewal period of WAF service. Unit: month
  late final pulumi.Output<int?> renewPeriod;
  /// Renewal status of WAF service. Valid values:
  /// * AutoRenewal: The service time of WAF is renewed automatically.
  /// * ManualRenewal (default): The service time of WAF is renewed manually.Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: "On" and "Off". Default to "Off".
  late final pulumi.Output<String?> renewalStatus;
  /// The resource group ID.
  late final pulumi.Output<String?> resourceGroupId;
  /// The status of the instance.
  late final pulumi.Output<int> status;
  /// Subscription of WAF service. Valid values: ["Subscription", "PayAsYouGo"].
  late final pulumi.Output<String> subscriptionType;
  /// Specify whether Log service is supported. Valid values: ["true", "false"]
  late final pulumi.Output<String> wafLog;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_waf_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:waf/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigScreen = registerOutput<String>('bigScreen');
    this.exclusiveIpPackage = registerOutput<String>('exclusiveIpPackage');
    this.extBandwidth = registerOutput<String>('extBandwidth');
    this.extDomainPackage = registerOutput<String>('extDomainPackage');
    this.logStorage = registerOutput<String>('logStorage');
    this.logTime = registerOutput<String>('logTime');
    this.modifyType = registerOutput<String?>('modifyType');
    this.packageCode = registerOutput<String>('packageCode');
    this.period = registerOutput<int?>('period');
    this.prefessionalService = registerOutput<String>('prefessionalService');
    this.region = registerOutput<String?>('region');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalStatus = registerOutput<String?>('renewalStatus');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.status = registerOutput<int>('status');
    this.subscriptionType = registerOutput<String>('subscriptionType');
    this.wafLog = registerOutput<String>('wafLog');
  }
}
