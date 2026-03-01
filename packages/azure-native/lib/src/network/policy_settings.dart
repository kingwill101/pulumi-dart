// ignore_for_file: unused_element, unnecessary_cast

import 'policy_settings_log_scrubbing.dart';

/// Defines contents of a web application firewall global configuration.
class PolicySettings {
  /// If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  final String? customBlockResponseBody;
  /// If the action type is block, customer can override the response status code.
  final int? customBlockResponseStatusCode;
  /// Whether allow WAF to enforce file upload limits.
  final bool? fileUploadEnforcement;
  /// Maximum file upload size in Mb for WAF.
  final int? fileUploadLimitInMb;
  /// Web Application Firewall JavaScript Challenge Cookie Expiration time in minutes.
  final int? jsChallengeCookieExpirationInMins;
  /// To scrub sensitive log fields
  final PolicySettingsLogScrubbing? logScrubbing;
  /// Maximum request body size in Kb for WAF.
  final int? maxRequestBodySizeInKb;
  /// The mode of the policy.
  final String? mode;
  /// Whether to allow WAF to check request Body.
  final bool? requestBodyCheck;
  /// Whether allow WAF to enforce request body limits.
  final bool? requestBodyEnforcement;
  /// Max inspection limit in KB for request body inspection for WAF.
  final int? requestBodyInspectLimitInKB;
  /// The state of the policy.
  final String? state;

  /// Creates a new [PolicySettings].
  /// [customBlockResponseBody] If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If the action type is block, customer can override the response status code.
  /// [fileUploadEnforcement] Whether allow WAF to enforce file upload limits.
  /// [fileUploadLimitInMb] Maximum file upload size in Mb for WAF.
  /// [jsChallengeCookieExpirationInMins] Web Application Firewall JavaScript Challenge Cookie Expiration time in minutes.
  /// [logScrubbing] To scrub sensitive log fields
  /// [maxRequestBodySizeInKb] Maximum request body size in Kb for WAF.
  /// [mode] The mode of the policy.
  /// [requestBodyCheck] Whether to allow WAF to check request Body.
  /// [requestBodyEnforcement] Whether allow WAF to enforce request body limits.
  /// [requestBodyInspectLimitInKB] Max inspection limit in KB for request body inspection for WAF.
  /// [state] The state of the policy.
  PolicySettings({
    this.customBlockResponseBody,
    this.customBlockResponseStatusCode,
    this.fileUploadEnforcement,
    this.fileUploadLimitInMb,
    this.jsChallengeCookieExpirationInMins,
    this.logScrubbing,
    this.maxRequestBodySizeInKb,
    this.mode,
    this.requestBodyCheck,
    this.requestBodyEnforcement,
    this.requestBodyInspectLimitInKB,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'fileUploadEnforcement': ?fileUploadEnforcement,
      'fileUploadLimitInMb': ?fileUploadLimitInMb,
      'jsChallengeCookieExpirationInMins': ?jsChallengeCookieExpirationInMins,
      'logScrubbing': ?logScrubbing == null ? null : logScrubbing!.toMap(),
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'mode': ?mode,
      'requestBodyCheck': ?requestBodyCheck,
      'requestBodyEnforcement': ?requestBodyEnforcement,
      'requestBodyInspectLimitInKB': ?requestBodyInspectLimitInKB,
      'state': ?state,
    };
  }

  factory PolicySettings.fromMap(Map<String, dynamic> map) {
    return PolicySettings(
      customBlockResponseBody: map['customBlockResponseBody'] == null ? null : map['customBlockResponseBody'] as String,
      customBlockResponseStatusCode: map['customBlockResponseStatusCode'] == null ? null : map['customBlockResponseStatusCode'] as int,
      fileUploadEnforcement: map['fileUploadEnforcement'] == null ? null : map['fileUploadEnforcement'] as bool,
      fileUploadLimitInMb: map['fileUploadLimitInMb'] == null ? null : map['fileUploadLimitInMb'] as int,
      jsChallengeCookieExpirationInMins: map['jsChallengeCookieExpirationInMins'] == null ? null : map['jsChallengeCookieExpirationInMins'] as int,
      logScrubbing: map['logScrubbing'] == null ? null : PolicySettingsLogScrubbing.fromMap((map['logScrubbing'] as Map).cast<String, dynamic>()),
      maxRequestBodySizeInKb: map['maxRequestBodySizeInKb'] == null ? null : map['maxRequestBodySizeInKb'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      requestBodyCheck: map['requestBodyCheck'] == null ? null : map['requestBodyCheck'] as bool,
      requestBodyEnforcement: map['requestBodyEnforcement'] == null ? null : map['requestBodyEnforcement'] as bool,
      requestBodyInspectLimitInKB: map['requestBodyInspectLimitInKB'] == null ? null : map['requestBodyInspectLimitInKB'] as int,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

