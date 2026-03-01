// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_rule_target_application.dart';

/// {@template pulumi_chime_sdkvoice_sip_rule_sdkvoice_sip_rule_args_doc}
/// The set of arguments for SdkvoiceSipRule.
/// {@endtemplate}
/// {@macro pulumi_chime_sdkvoice_sip_rule_sdkvoice_sip_rule_args_doc}
class SdkvoiceSipRuleArgs {
  /// Enables or disables a rule. You must disable rules before you can delete them.
  final pulumi.Input<bool>? disabled;

  /// The name of the SIP rule.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used. See `target_applications`.
  final pulumi.Input<List<SdkvoiceSipRuleTargetApplication>> targetApplications;

  /// The type of trigger assigned to the SIP rule in `trigger_value`. Valid values are `RequestUriHostname` or `ToPhoneNumber`.
  final pulumi.Input<String> triggerType;

  /// If `trigger_type` is `RequestUriHostname`, the value can be the outbound host name of an Amazon Chime Voice Connector. If `trigger_type` is `ToPhoneNumber`, the value can be a customer-owned phone number in the E164 format. The Sip Media Application specified in the Sip Rule is triggered if the request URI in an incoming SIP request matches the `RequestUriHostname`, or if the "To" header in the incoming SIP request matches the `ToPhoneNumber` value.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> triggerValue;

  /// Creates a new [SdkvoiceSipRuleArgs].
  /// [disabled] Enables or disables a rule. You must disable rules before you can delete them.
  /// [name] The name of the SIP rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetApplications] List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used. See `target_applications`.
  /// [triggerType] The type of trigger assigned to the SIP rule in `trigger_value`. Valid values are `RequestUriHostname` or `ToPhoneNumber`.
  /// [triggerValue] If `trigger_type` is `RequestUriHostname`, the value can be the outbound host name of an Amazon Chime Voice Connector. If `trigger_type` is `ToPhoneNumber`, the value can be a customer-owned phone number in the E164 format. The Sip Media Application specified in the Sip Rule is triggered if the request URI in an incoming SIP request matches the `RequestUriHostname`, or if the "To" header in the incoming SIP request matches the `ToPhoneNumber` value.
  SdkvoiceSipRuleArgs({
    bool? disabled,
    String? name,
    String? region,
    required List<SdkvoiceSipRuleTargetApplication> targetApplications,
    required String triggerType,
    required String triggerValue,
  }) : disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       targetApplications =
           pulumi.Input.asInput<List<SdkvoiceSipRuleTargetApplication>>(
             targetApplications,
           ),
       triggerType = pulumi.Input.asInput<String>(triggerType),
       triggerValue = pulumi.Input.asInput<String>(triggerValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'name': ?name,
      'region': ?region,
      'targetApplications':
          pulumi.Input.mapInputValue<
            List<SdkvoiceSipRuleTargetApplication>,
            List<Map<String, dynamic>>
          >(
            targetApplications,
            (value) =>
                pulumi.Input.encodeList<
                  SdkvoiceSipRuleTargetApplication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'triggerType': triggerType,
      'triggerValue': triggerValue,
    };
  }

  factory SdkvoiceSipRuleArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipRuleArgs(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      targetApplications:
          pulumi.Input.decodeList<SdkvoiceSipRuleTargetApplication>(
            map['targetApplications'],
            (value) => SdkvoiceSipRuleTargetApplication.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      triggerType: map['triggerType'] as String,
      triggerValue: map['triggerValue'] as String,
    );
  }
}
