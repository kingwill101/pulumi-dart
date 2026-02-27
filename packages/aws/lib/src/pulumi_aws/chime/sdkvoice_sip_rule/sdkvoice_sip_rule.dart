import 'package:pulumi/pulumi.dart' as pulumi;
import '../sdkvoice_sip_rule_target_application/sdkvoice_sip_rule_target_application.dart';
import 'sdkvoice_sip_rule_args.dart';

/// A SIP rule associates your SIP media application with a phone number or a Request URI hostname. You can associate a SIP rule with more than one SIP media application. Each application then runs only that rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a ChimeSDKVoice SIP Rule using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceSipRule:SdkvoiceSipRule example abcdef123456
/// ```
class SdkvoiceSipRule extends pulumi.CustomResource {
  /// Enables or disables a rule. You must disable rules before you can delete them.
  late final pulumi.Output<bool?> disabled;

  /// The name of the SIP rule.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used. See `target_applications`.
  late final pulumi.Output<List<SdkvoiceSipRuleTargetApplication>>
      targetApplications;

  /// The type of trigger assigned to the SIP rule in `trigger_value`. Valid values are `RequestUriHostname` or `ToPhoneNumber`.
  late final pulumi.Output<String> triggerType;

  /// If `trigger_type` is `RequestUriHostname`, the value can be the outbound host name of an Amazon Chime Voice Connector. If `trigger_type` is `ToPhoneNumber`, the value can be a customer-owned phone number in the E164 format. The Sip Media Application specified in the Sip Rule is triggered if the request URI in an incoming SIP request matches the `RequestUriHostname`, or if the "To" header in the incoming SIP request matches the `ToPhoneNumber` value.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> triggerValue;

  SdkvoiceSipRule(
    String name, {
    SdkvoiceSipRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipRule:SdkvoiceSipRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.targetApplications =
        registerOutput<List<SdkvoiceSipRuleTargetApplication>>(
            'targetApplications');
    this.triggerType = registerOutput<String>('triggerType');
    this.triggerValue = registerOutput<String>('triggerValue');
  }
}
