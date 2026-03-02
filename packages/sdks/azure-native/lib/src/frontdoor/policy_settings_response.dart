// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_application_firewall_scrubbing_rules_response.dart';

/// Defines top-level WebApplicationFirewallPolicy configuration settings.
class PolicySettingsResponse {
  /// If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? customBlockResponseBody;
  /// If the action type is block, customer can override the response status code.
  final pulumi.Input<int>? customBlockResponseStatusCode;
  /// Describes if the policy is in enabled or disabled state. Defaults to Enabled if not specified.
  final pulumi.Input<String>? enabledState;
  /// Defines the JavaScript challenge cookie validity lifetime in minutes. This setting is only applicable to Premium_AzureFrontDoor. Value must be an integer between 5 and 1440 with the default value being 30.
  final pulumi.Input<int>? javascriptChallengeExpirationInMinutes;
  /// Describes if it is in detection mode or prevention mode at policy level.
  final pulumi.Input<String>? mode;
  /// If action type is redirect, this field represents redirect URL for the client.
  final pulumi.Input<String>? redirectUrl;
  /// Describes if policy managed rules will inspect the request body content.
  final pulumi.Input<String>? requestBodyCheck;
  /// List of log scrubbing rules applied to the Web Application Firewall logs.
  final pulumi.Input<List<WebApplicationFirewallScrubbingRulesResponse>>? scrubbingRules;
  /// State of the log scrubbing config. Default value is Enabled.
  final pulumi.Input<String>? state;

  /// Creates a new [PolicySettingsResponse].
  /// [customBlockResponseBody] If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If the action type is block, customer can override the response status code.
  /// [enabledState] Describes if the policy is in enabled or disabled state. Defaults to Enabled if not specified.
  /// [javascriptChallengeExpirationInMinutes] Defines the JavaScript challenge cookie validity lifetime in minutes. This setting is only applicable to Premium_AzureFrontDoor. Value must be an integer between 5 and 1440 with the default value being 30.
  /// [mode] Describes if it is in detection mode or prevention mode at policy level.
  /// [redirectUrl] If action type is redirect, this field represents redirect URL for the client.
  /// [requestBodyCheck] Describes if policy managed rules will inspect the request body content.
  /// [scrubbingRules] List of log scrubbing rules applied to the Web Application Firewall logs.
  /// [state] State of the log scrubbing config. Default value is Enabled.
  PolicySettingsResponse({
    this.customBlockResponseBody,
    this.customBlockResponseStatusCode,
    this.enabledState,
    this.javascriptChallengeExpirationInMinutes,
    this.mode,
    this.redirectUrl,
    this.requestBodyCheck,
    this.scrubbingRules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'enabledState': ?enabledState,
      'javascriptChallengeExpirationInMinutes': ?javascriptChallengeExpirationInMinutes,
      'mode': ?mode,
      'redirectUrl': ?redirectUrl,
      'requestBodyCheck': ?requestBodyCheck,
      'scrubbingRules': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationFirewallScrubbingRulesResponse>, List<Map<String, dynamic>>>(scrubbingRules, (value) => pulumi.Input.encodeList<WebApplicationFirewallScrubbingRulesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory PolicySettingsResponse.fromMap(Map<String, dynamic> map) {
    return PolicySettingsResponse(
      customBlockResponseBody: map['customBlockResponseBody'] == null ? null : (map['customBlockResponseBody'] as String).input(),
      customBlockResponseStatusCode: map['customBlockResponseStatusCode'] == null ? null : (map['customBlockResponseStatusCode'] as int).input(),
      enabledState: map['enabledState'] == null ? null : (map['enabledState'] as String).input(),
      javascriptChallengeExpirationInMinutes: map['javascriptChallengeExpirationInMinutes'] == null ? null : (map['javascriptChallengeExpirationInMinutes'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      redirectUrl: map['redirectUrl'] == null ? null : (map['redirectUrl'] as String).input(),
      requestBodyCheck: map['requestBodyCheck'] == null ? null : (map['requestBodyCheck'] as String).input(),
      scrubbingRules: map['scrubbingRules'] == null ? null : (pulumi.Input.decodeList<WebApplicationFirewallScrubbingRulesResponse>(map['scrubbingRules'], (value) => WebApplicationFirewallScrubbingRulesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

