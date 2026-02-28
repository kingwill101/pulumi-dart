// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_threat_prevention_profile_antivirus_override.dart';
import 'security_profile_threat_prevention_profile_severity_override.dart';
import 'security_profile_threat_prevention_profile_threat_override.dart';

class SecurityProfileThreatPreventionProfile {
  /// Defines what action to take for antivirus threats per protocol.
  /// Structure is documented below.
  final List<SecurityProfileThreatPreventionProfileAntivirusOverride>?
      antivirusOverrides;

  /// The configuration for overriding threats actions by severity match.
  /// Structure is documented below.
  final List<SecurityProfileThreatPreventionProfileSeverityOverride>?
      severityOverrides;

  /// The configuration for overriding threats actions by threat id match.
  /// If a threat is matched both by configuration provided in severity overrides
  /// and threat overrides, the threat overrides action is applied.
  /// Structure is documented below.
  final List<SecurityProfileThreatPreventionProfileThreatOverride>?
      threatOverrides;

  /// Creates a new [SecurityProfileThreatPreventionProfile].
  /// [antivirusOverrides] Defines what action to take for antivirus threats per protocol.
  /// [severityOverrides] The configuration for overriding threats actions by severity match.
  /// [threatOverrides] The configuration for overriding threats actions by threat id match.
  SecurityProfileThreatPreventionProfile({
    this.antivirusOverrides,
    this.severityOverrides,
    this.threatOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final antivirusOverridesValue = antivirusOverrides;
    if (antivirusOverridesValue != null) {
      map['antivirusOverrides'] = pulumi.Input.encodeList<
              SecurityProfileThreatPreventionProfileAntivirusOverride,
              Map<String, dynamic>>(
          antivirusOverridesValue, (value) => value.toMap());
    }
    final severityOverridesValue = severityOverrides;
    if (severityOverridesValue != null) {
      map['severityOverrides'] = pulumi.Input.encodeList<
              SecurityProfileThreatPreventionProfileSeverityOverride,
              Map<String, dynamic>>(
          severityOverridesValue, (value) => value.toMap());
    }
    final threatOverridesValue = threatOverrides;
    if (threatOverridesValue != null) {
      map['threatOverrides'] = pulumi.Input.encodeList<
          SecurityProfileThreatPreventionProfileThreatOverride,
          Map<String, dynamic>>(threatOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityProfileThreatPreventionProfile.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileThreatPreventionProfile(
      antivirusOverrides: map['antivirusOverrides'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityProfileThreatPreventionProfileAntivirusOverride>(
              map['antivirusOverrides'],
              (value) => SecurityProfileThreatPreventionProfileAntivirusOverride
                  .fromMap((value as Map).cast<String, dynamic>())),
      severityOverrides: map['severityOverrides'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityProfileThreatPreventionProfileSeverityOverride>(
              map['severityOverrides'],
              (value) => SecurityProfileThreatPreventionProfileSeverityOverride
                  .fromMap((value as Map).cast<String, dynamic>())),
      threatOverrides: map['threatOverrides'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityProfileThreatPreventionProfileThreatOverride>(
              map['threatOverrides'],
              (value) =>
                  SecurityProfileThreatPreventionProfileThreatOverride.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
