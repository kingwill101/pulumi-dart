// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_scrubbing_rules.dart';

/// Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
class ProfileLogScrubbing {
  /// List of log scrubbing rules applied to the Azure Front Door profile logs.
  final pulumi.Input<List<ProfileScrubbingRules>>? scrubbingRules;
  /// State of the log scrubbing config. Default value is Enabled.
  final pulumi.Input<String>? state;

  /// Creates a new [ProfileLogScrubbing].
  /// [scrubbingRules] List of log scrubbing rules applied to the Azure Front Door profile logs.
  /// [state] State of the log scrubbing config. Default value is Enabled.
  ProfileLogScrubbing({
    this.scrubbingRules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scrubbingRules': ?pulumi.Input.mapOptionalInputValue<List<ProfileScrubbingRules>, List<Map<String, dynamic>>>(scrubbingRules, (value) => pulumi.Input.encodeList<ProfileScrubbingRules, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory ProfileLogScrubbing.fromMap(Map<String, dynamic> map) {
    return ProfileLogScrubbing(
      scrubbingRules: (() { final guardedValue = map['scrubbingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProfileScrubbingRules>(guardedValue, (value) => ProfileScrubbingRules.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

