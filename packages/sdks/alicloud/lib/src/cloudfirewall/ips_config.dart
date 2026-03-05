import 'package:pulumi/pulumi.dart' as pulumi;
import 'ips_config_args.dart';
import 'ips_config_state.dart';

/// ## Import
///
/// Cloud Firewall IPS Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/ipsConfig:IpsConfig example
/// ```
class IpsConfig extends pulumi.CustomResource {
  /// Basic rule switch. Value:
  /// - 1: Open.
  /// - 0: Closed (Default).
  late final pulumi.Output<int?> basicRules;
  /// Threat intelligence. Value:
  /// - 1: Open.
  /// - 0: Closed (Default).
  late final pulumi.Output<int?> ctiRules;
  /// Language
  late final pulumi.Output<String?> lang;
  /// Sensitive data detection Daily detection traffic limit. Defaults to 0.
  late final pulumi.Output<int?> maxSdl;
  /// Virtual patch switch. Value:
  /// - 1: Open.
  /// - 0: Closed (Default).
  late final pulumi.Output<int?> patchRules;
  /// The IPS rule Group. Value:
  /// - 1: loose rule Group.
  /// - 2: Medium rule Group.
  /// - 3: Strict rule groups.
  late final pulumi.Output<int?> ruleClass;
  /// IPS defense mode. Value:
  /// - 1: Intercept mode.
  /// - 0: Observation mode (Default).
  late final pulumi.Output<int?> runMode;

  /// Creates a new [IpsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpsConfig]. {@macro pulumi_cloudfirewall_ips_config_ips_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpsConfig(
    String name, {
    IpsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/ipsConfig:IpsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    basicRules = registerOutput<int?>('basicRules');
    ctiRules = registerOutput<int?>('ctiRules');
    lang = registerOutput<String?>('lang');
    maxSdl = registerOutput<int?>('maxSdl');
    patchRules = registerOutput<int?>('patchRules');
    ruleClass = registerOutput<int?>('ruleClass');
    runMode = registerOutput<int?>('runMode');
  }

  /// Gets an existing [IpsConfig] resource's state with the given [name] and [id].
  static IpsConfig get(
    String name,
    pulumi.Input<String> id, {
    IpsConfigState? state,
  }) {
    return IpsConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpsConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/ipsConfig:IpsConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    basicRules = registerOutput<int?>('basicRules');
    ctiRules = registerOutput<int?>('ctiRules');
    lang = registerOutput<String?>('lang');
    maxSdl = registerOutput<int?>('maxSdl');
    patchRules = registerOutput<int?>('patchRules');
    ruleClass = registerOutput<int?>('ruleClass');
    runMode = registerOutput<int?>('runMode');
  }
}
