// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../sdkvoice_sip_rule_target_application/sdkvoice_sip_rule_target_application.dart';

/// The set of arguments for SdkvoiceSipRule.
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

  SdkvoiceSipRuleArgs({
    this.disabled,
    this.name,
    this.region,
    required this.targetApplications,
    required this.triggerType,
    required this.triggerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetApplications'] = pulumi.Input.mapInputValue<
            List<SdkvoiceSipRuleTargetApplication>, List<Map<String, dynamic>>>(
        targetApplications,
        (value) => pulumi.Input.encodeList<SdkvoiceSipRuleTargetApplication,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['triggerType'] = triggerType;
    map['triggerValue'] = triggerValue;
    return map;
  }

  factory SdkvoiceSipRuleArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipRuleArgs(
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetApplications:
          pulumi.Input.asInput<List<SdkvoiceSipRuleTargetApplication>>(
              map['targetApplications']),
      triggerType: pulumi.Input.asInput<String>(map['triggerType']),
      triggerValue: pulumi.Input.asInput<String>(map['triggerValue']),
    );
  }
}
