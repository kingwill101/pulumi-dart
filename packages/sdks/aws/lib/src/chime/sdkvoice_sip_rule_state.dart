// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_rule_target_application.dart';

/// Input properties used for looking up and filtering SdkvoiceSipRule resources.
class SdkvoiceSipRuleState {
  /// Enables or disables a rule. You must disable rules before you can delete them.
  final pulumi.Input<bool>? disabled;
  /// The name of the SIP rule.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used. See `target_applications`.
  final pulumi.Input<List<SdkvoiceSipRuleTargetApplication>>? targetApplications;
  /// The type of trigger assigned to the SIP rule in `trigger_value`. Valid values are `RequestUriHostname` or `ToPhoneNumber`.
  final pulumi.Input<String>? triggerType;
  /// If `trigger_type` is `RequestUriHostname`, the value can be the outbound host name of an Amazon Chime Voice Connector. If `trigger_type` is `ToPhoneNumber`, the value can be a customer-owned phone number in the E164 format. The Sip Media Application specified in the Sip Rule is triggered if the request URI in an incoming SIP request matches the `RequestUriHostname`, or if the "To" header in the incoming SIP request matches the `ToPhoneNumber` value.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? triggerValue;

  /// Creates a new [SdkvoiceSipRuleState].
  /// [disabled] Enables or disables a rule. You must disable rules before you can delete them.
  /// [name] The name of the SIP rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetApplications] List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used. See `target_applications`.
  /// [triggerType] The type of trigger assigned to the SIP rule in `trigger_value`. Valid values are `RequestUriHostname` or `ToPhoneNumber`.
  /// [triggerValue] If `trigger_type` is `RequestUriHostname`, the value can be the outbound host name of an Amazon Chime Voice Connector. If `trigger_type` is `ToPhoneNumber`, the value can be a customer-owned phone number in the E164 format. The Sip Media Application specified in the Sip Rule is triggered if the request URI in an incoming SIP request matches the `RequestUriHostname`, or if the "To" header in the incoming SIP request matches the `ToPhoneNumber` value.
  const SdkvoiceSipRuleState({
    this.disabled,
    this.name,
    this.region,
    this.targetApplications,
    this.triggerType,
    this.triggerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'name': ?name,
      'region': ?region,
      'targetApplications': ?pulumi.Input.mapOptionalInputValue<List<SdkvoiceSipRuleTargetApplication>, List<Map<String, dynamic>>>(targetApplications, (value) => pulumi.Input.encodeList<SdkvoiceSipRuleTargetApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'triggerType': ?triggerType,
      'triggerValue': ?triggerValue,
    };
  }

  factory SdkvoiceSipRuleState.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipRuleState(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetApplications: (() { final guardedValue = map['targetApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SdkvoiceSipRuleTargetApplication>(guardedValue, (value) => SdkvoiceSipRuleTargetApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerValue: (() { final guardedValue = map['triggerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

