// ignore_for_file: unused_element, unnecessary_cast

import 'service_directory_config.dart';

/// GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise integration.
class GitLabEnterpriseConfig {
  /// Immutable. The URI of the GitlabEnterprise host.
  final String? hostUri;

  /// The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  final ServiceDirectoryConfig? serviceDirectoryConfig;

  /// The SSL certificate to use in requests to GitLab Enterprise instances.
  final String? sslCa;

  GitLabEnterpriseConfig({
    this.hostUri,
    this.serviceDirectoryConfig,
    this.sslCa,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostUriValue = hostUri;
    if (hostUriValue != null) {
      map['hostUri'] = hostUriValue;
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = serviceDirectoryConfigValue.toMap();
    }
    final sslCaValue = sslCa;
    if (sslCaValue != null) {
      map['sslCa'] = sslCaValue;
    }
    return map;
  }

  factory GitLabEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return GitLabEnterpriseConfig(
      hostUri: map['hostUri'] == null ? null : map['hostUri'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
    );
  }
}
