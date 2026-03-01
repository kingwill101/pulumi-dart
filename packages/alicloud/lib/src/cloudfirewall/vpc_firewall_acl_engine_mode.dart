import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_firewall_acl_engine_mode_args.dart';

/// ## Import
///
/// Cloud Firewall Vpc Firewall Acl Engine Mode can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/vpcFirewallAclEngineMode:VpcFirewallAclEngineMode example <vpc_firewall_id>
/// ```
class VpcFirewallAclEngineMode extends pulumi.CustomResource {
  /// The ID of member account.
  late final pulumi.Output<String?> memberUid;
  /// The mode of the ACL engine. Possible values are `0`, `1`.
  late final pulumi.Output<int> strictMode;
  /// The ID of the VPC firewall.
  late final pulumi.Output<String> vpcFirewallId;

  /// Creates a new [VpcFirewallAclEngineMode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcFirewallAclEngineMode]. {@macro pulumi_cloudfirewall_vpc_firewall_acl_engine_mode_vpc_firewall_acl_engine_mode_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcFirewallAclEngineMode(
    String name, {
    VpcFirewallAclEngineModeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/vpcFirewallAclEngineMode:VpcFirewallAclEngineMode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.memberUid = registerOutput<String?>('memberUid');
    this.strictMode = registerOutput<int>('strictMode');
    this.vpcFirewallId = registerOutput<String>('vpcFirewallId');
  }
}
