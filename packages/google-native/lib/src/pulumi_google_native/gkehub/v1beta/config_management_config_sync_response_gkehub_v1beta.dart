// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_git_config_response_gkehub_v1beta.dart';
import 'config_management_oci_config_response_gkehub_v1beta.dart';

/// Configuration for Config Sync
class ConfigManagementConfigSyncResponseGkehubV1beta {
  /// Set to true to allow the vertical scaling. Defaults to false which disallows vertical scaling. This field is deprecated.
  final bool allowVerticalScale;

  /// Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of the git or oci field.
  final bool enabled;

  /// Git repo configuration for the cluster.
  final ConfigManagementGitConfigResponseGkehubV1beta git;

  /// The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring and Cloud Monarch when Workload Identity is enabled. The GSA should have the Monitoring Metric Writer (roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA. This field is required when automatic Feature management is enabled.
  final String metricsGcpServiceAccountEmail;

  /// OCI repo configuration for the cluster
  final ConfigManagementOciConfigResponseGkehubV1beta oci;

  /// Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  final bool preventDrift;

  /// Specifies whether the Config Sync Repo is in "hierarchical" or "unstructured" mode.
  final String sourceFormat;

  ConfigManagementConfigSyncResponseGkehubV1beta({
    required this.allowVerticalScale,
    required this.enabled,
    required this.git,
    required this.metricsGcpServiceAccountEmail,
    required this.oci,
    required this.preventDrift,
    required this.sourceFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowVerticalScale'] = allowVerticalScale;
    map['enabled'] = enabled;
    map['git'] = git.toMap();
    map['metricsGcpServiceAccountEmail'] = metricsGcpServiceAccountEmail;
    map['oci'] = oci.toMap();
    map['preventDrift'] = preventDrift;
    map['sourceFormat'] = sourceFormat;
    return map;
  }

  factory ConfigManagementConfigSyncResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementConfigSyncResponseGkehubV1beta(
      allowVerticalScale: map['allowVerticalScale'] as bool,
      enabled: map['enabled'] as bool,
      git: ConfigManagementGitConfigResponseGkehubV1beta.fromMap(
          (map['git'] as Map).cast<String, dynamic>()),
      metricsGcpServiceAccountEmail:
          map['metricsGcpServiceAccountEmail'] as String,
      oci: ConfigManagementOciConfigResponseGkehubV1beta.fromMap(
          (map['oci'] as Map).cast<String, dynamic>()),
      preventDrift: map['preventDrift'] as bool,
      sourceFormat: map['sourceFormat'] as String,
    );
  }
}
