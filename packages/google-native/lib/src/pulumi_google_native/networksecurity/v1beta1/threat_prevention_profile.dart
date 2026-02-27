// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_override.dart';
import 'threat_override.dart';

/// ThreatPreventionProfile defines an action for specific threat signatures or severity levels.
class ThreatPreventionProfile {
  /// Optional. Configuration for overriding threats actions by severity match.
  final List<SeverityOverride>? severityOverrides;

  /// Optional. Configuration for overriding threats actions by threat_id match. If a threat is matched both by configuration provided in severity_overrides and threat_overrides, the threat_overrides action is applied.
  final List<ThreatOverride>? threatOverrides;

  ThreatPreventionProfile({
    this.severityOverrides,
    this.threatOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final severityOverridesValue = severityOverrides;
    if (severityOverridesValue != null) {
      map['severityOverrides'] =
          pulumi.Input.encodeList<SeverityOverride, Map<String, dynamic>>(
              severityOverridesValue, (value) => value.toMap());
    }
    final threatOverridesValue = threatOverrides;
    if (threatOverridesValue != null) {
      map['threatOverrides'] =
          pulumi.Input.encodeList<ThreatOverride, Map<String, dynamic>>(
              threatOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ThreatPreventionProfile.fromMap(Map<String, dynamic> map) {
    return ThreatPreventionProfile(
      severityOverrides: map['severityOverrides'] == null
          ? null
          : pulumi.Input.decodeList<SeverityOverride>(
              map['severityOverrides'],
              (value) => SeverityOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
      threatOverrides: map['threatOverrides'] == null
          ? null
          : pulumi.Input.decodeList<ThreatOverride>(
              map['threatOverrides'],
              (value) => ThreatOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
