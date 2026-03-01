import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_firewall_ips_config_args.dart';

/// ## Import
///
/// Cloud Firewall Vpc Firewall Ips Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/vpcFirewallIpsConfig:VpcFirewallIpsConfig example <id>
/// ```
class VpcFirewallIpsConfig extends pulumi.CustomResource {
  /// Base rule switch. Value:
  late final pulumi.Output<int> basicRules;
  /// Virtual patch switch. Value:
  late final pulumi.Output<int> enableAllPatch;
  /// Language
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> lang;
  /// MemberUid
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> memberUid;
  /// IPS rule Group
  late final pulumi.Output<String?> ruleClass;
  /// IPS defense mode. Value:
  late final pulumi.Output<int> runMode;
  /// The ID of the VPC firewall instance. Value:
  /// - When VPC firewall protects the network instances (including VPC, VBR, and CCN) and the specified VPC, the instance ID uses the CEN instance ID. You can call the DescribeVpcFirewallCenList operation to query the instance ID of CEN.
  /// - When the VPC firewall protects the traffic between two VPCs connected through the express connection, the instance ID uses the VPC firewall instance ID. You can call the DescribeVpcFirewallList operation to query the instance ID of the VPC firewall.
  late final pulumi.Output<String> vpcFirewallId;

  /// Creates a new [VpcFirewallIpsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcFirewallIpsConfig]. {@macro pulumi_cloudfirewall_vpc_firewall_ips_config_vpc_firewall_ips_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcFirewallIpsConfig(
    String name, {
    VpcFirewallIpsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/vpcFirewallIpsConfig:VpcFirewallIpsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basicRules = registerOutput<int>('basicRules');
    this.enableAllPatch = registerOutput<int>('enableAllPatch');
    this.lang = registerOutput<String?>('lang');
    this.memberUid = registerOutput<String?>('memberUid');
    this.ruleClass = registerOutput<String?>('ruleClass');
    this.runMode = registerOutput<int>('runMode');
    this.vpcFirewallId = registerOutput<String>('vpcFirewallId');
  }
}
