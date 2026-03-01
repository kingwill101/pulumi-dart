import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_advanced_config_args.dart';

/// ## Import
///
/// Cloud Firewall Policy Advanced Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/policyAdvancedConfig:PolicyAdvancedConfig example
/// ```
class PolicyAdvancedConfig extends pulumi.CustomResource {
  /// Access control policy strict mode of on-state. Valid values:
  late final pulumi.Output<String> internetSwitch;

  /// Creates a new [PolicyAdvancedConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAdvancedConfig]. {@macro pulumi_cloudfirewall_policy_advanced_config_policy_advanced_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAdvancedConfig(
    String name, {
    PolicyAdvancedConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/policyAdvancedConfig:PolicyAdvancedConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.internetSwitch = registerOutput<String>('internetSwitch');
  }
}
