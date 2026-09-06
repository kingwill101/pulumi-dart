// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_mapping_rule_profile_options.dart';

/// Helm mapping rule profile
class HelmMappingRuleProfile {
  /// Helm package version.
  final pulumi.Input<String?>? helmPackageVersion;
  /// The helm deployment options
  final pulumi.Input<HelmMappingRuleProfileOptions?>? options;
  /// Helm release name.
  final pulumi.Input<String?>? releaseName;
  /// Helm release namespace.
  final pulumi.Input<String?>? releaseNamespace;
  /// Helm release values.
  final pulumi.Input<String?>? values;

  /// Creates a new [HelmMappingRuleProfile].
  /// [helmPackageVersion] Helm package version.
  /// [options] The helm deployment options
  /// [releaseName] Helm release name.
  /// [releaseNamespace] Helm release namespace.
  /// [values] Helm release values.
  const HelmMappingRuleProfile({
    this.helmPackageVersion,
    this.options,
    this.releaseName,
    this.releaseNamespace,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmPackageVersion': ?helmPackageVersion,
      'options': ?pulumi.Input.mapOptionalInputValue<HelmMappingRuleProfileOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'releaseName': ?releaseName,
      'releaseNamespace': ?releaseNamespace,
      'values': ?values,
    };
  }

  factory HelmMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return HelmMappingRuleProfile(
      helmPackageVersion: (() { final guardedValue = map['helmPackageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HelmMappingRuleProfileOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      releaseName: (() { final guardedValue = map['releaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseNamespace: (() { final guardedValue = map['releaseNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
