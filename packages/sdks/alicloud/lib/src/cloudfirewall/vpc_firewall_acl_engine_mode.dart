import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_firewall_acl_engine_mode_args.dart';
import 'vpc_firewall_acl_engine_mode_state.dart';

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

  /// Gets an existing [VpcFirewallAclEngineMode] resource's state with the given [name] and [id].
  static VpcFirewallAclEngineMode get(
    String name,
    pulumi.Input<String> id, {
    VpcFirewallAclEngineModeState? state,
  }) {
    return VpcFirewallAclEngineMode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcFirewallAclEngineMode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/vpcFirewallAclEngineMode:VpcFirewallAclEngineMode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.memberUid = registerOutput<String?>('memberUid');
    this.strictMode = registerOutput<int>('strictMode');
    this.vpcFirewallId = registerOutput<String>('vpcFirewallId');
  }
}
