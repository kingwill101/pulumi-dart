// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_scrubbing_rules_response.dart';

/// Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
class ProfileLogScrubbingResponse {
  /// List of log scrubbing rules applied to the Azure Front Door profile logs.
  final List<ProfileScrubbingRulesResponse>? scrubbingRules;
  /// State of the log scrubbing config. Default value is Enabled.
  final String? state;

  /// Creates a new [ProfileLogScrubbingResponse].
  /// [scrubbingRules] List of log scrubbing rules applied to the Azure Front Door profile logs.
  /// [state] State of the log scrubbing config. Default value is Enabled.
  ProfileLogScrubbingResponse({
    this.scrubbingRules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scrubbingRules': ?scrubbingRules == null ? null : pulumi.Input.encodeList<ProfileScrubbingRulesResponse, Map<String, dynamic>>(scrubbingRules!, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory ProfileLogScrubbingResponse.fromMap(Map<String, dynamic> map) {
    return ProfileLogScrubbingResponse(
      scrubbingRules: map['scrubbingRules'] == null ? null : pulumi.Input.decodeList<ProfileScrubbingRulesResponse>(map['scrubbingRules'], (value) => ProfileScrubbingRulesResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

