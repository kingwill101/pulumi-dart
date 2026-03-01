// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_git_config_gkehub_v1beta.dart';
import 'config_management_oci_config_gkehub_v1beta.dart';

/// Configuration for Config Sync
class ConfigManagementConfigSyncGkehubV1beta {
  /// Set to true to allow the vertical scaling. Defaults to false which disallows vertical scaling. This field is deprecated.
  final bool? allowVerticalScale;

  /// Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  final bool? enabled;

  /// Git repo configuration for the cluster.
  final ConfigManagementGitConfigGkehubV1beta? git;

  /// The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring and Cloud Monarch when Workload Identity is enabled. The GSA should have the Monitoring Metric Writer (roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA. This field is required when automatic Feature management is enabled.
  final String? metricsGcpServiceAccountEmail;

  /// OCI repo configuration for the cluster
  final ConfigManagementOciConfigGkehubV1beta? oci;

  /// Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  final bool? preventDrift;

  /// Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured" mode.
  final String? sourceFormat;

  /// Creates a new [ConfigManagementConfigSyncGkehubV1beta].
  /// [allowVerticalScale] Set to true to allow the vertical scaling. Defaults to false which disallows vertical scaling. This field is deprecated.
  /// [enabled] Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  /// [git] Git repo configuration for the cluster.
  /// [metricsGcpServiceAccountEmail] The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring and Cloud Monarch when Workload Identity is enabled. The GSA should have the Monitoring Metric Writer (roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA. This field is required when automatic Feature management is enabled.
  /// [oci] OCI repo configuration for the cluster
  /// [preventDrift] Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  /// [sourceFormat] Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured" mode.
  ConfigManagementConfigSyncGkehubV1beta({
    this.allowVerticalScale,
    this.enabled,
    this.git,
    this.metricsGcpServiceAccountEmail,
    this.oci,
    this.preventDrift,
    this.sourceFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVerticalScale': ?allowVerticalScale,
      'enabled': ?enabled,
      'git': ?git == null ? null : git!.toMap(),
      'metricsGcpServiceAccountEmail': ?metricsGcpServiceAccountEmail,
      'oci': ?oci == null ? null : oci!.toMap(),
      'preventDrift': ?preventDrift,
      'sourceFormat': ?sourceFormat,
    };
  }

  factory ConfigManagementConfigSyncGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigManagementConfigSyncGkehubV1beta(
      allowVerticalScale: map['allowVerticalScale'] == null
          ? null
          : map['allowVerticalScale'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      git: map['git'] == null
          ? null
          : ConfigManagementGitConfigGkehubV1beta.fromMap(
              (map['git'] as Map).cast<String, dynamic>(),
            ),
      metricsGcpServiceAccountEmail:
          map['metricsGcpServiceAccountEmail'] == null
          ? null
          : map['metricsGcpServiceAccountEmail'] as String,
      oci: map['oci'] == null
          ? null
          : ConfigManagementOciConfigGkehubV1beta.fromMap(
              (map['oci'] as Map).cast<String, dynamic>(),
            ),
      preventDrift: map['preventDrift'] == null
          ? null
          : map['preventDrift'] as bool,
      sourceFormat: map['sourceFormat'] == null
          ? null
          : map['sourceFormat'] as String,
    );
  }
}
