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
  const PolicySettingsResponse({
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
      customBlockResponseBody: (() { final guardedValue = map['customBlockResponseBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customBlockResponseStatusCode: (() { final guardedValue = map['customBlockResponseStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javascriptChallengeExpirationInMinutes: (() { final guardedValue = map['javascriptChallengeExpirationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBodyCheck: (() { final guardedValue = map['requestBodyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scrubbingRules: (() { final guardedValue = map['scrubbingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationFirewallScrubbingRulesResponse>(guardedValue, (value) => WebApplicationFirewallScrubbingRulesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

