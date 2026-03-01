// ignore_for_file: unused_element, unnecessary_cast

import 'helm_mapping_rule_profile_response_options.dart';

/// Helm mapping rule profile
class HelmMappingRuleProfileResponse {
  /// Helm package version.
  final String? helmPackageVersion;
  /// The helm deployment options
  final HelmMappingRuleProfileResponseOptions? options;
  /// Helm release name.
  final String? releaseName;
  /// Helm release namespace.
  final String? releaseNamespace;
  /// Helm release values.
  final String? values;

  /// Creates a new [HelmMappingRuleProfileResponse].
  /// [helmPackageVersion] Helm package version.
  /// [options] The helm deployment options
  /// [releaseName] Helm release name.
  /// [releaseNamespace] Helm release namespace.
  /// [values] Helm release values.
  HelmMappingRuleProfileResponse({
    this.helmPackageVersion,
    this.options,
    this.releaseName,
    this.releaseNamespace,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmPackageVersion': ?helmPackageVersion,
      'options': ?options == null ? null : options!.toMap(),
      'releaseName': ?releaseName,
      'releaseNamespace': ?releaseNamespace,
      'values': ?values,
    };
  }

  factory HelmMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return HelmMappingRuleProfileResponse(
      helmPackageVersion: map['helmPackageVersion'] == null ? null : map['helmPackageVersion'] as String,
      options: map['options'] == null ? null : HelmMappingRuleProfileResponseOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
      releaseName: map['releaseName'] == null ? null : map['releaseName'] as String,
      releaseNamespace: map['releaseNamespace'] == null ? null : map['releaseNamespace'] as String,
      values: map['values'] == null ? null : map['values'] as String,
    );
  }
}

