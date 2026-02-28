// ignore_for_file: unused_element, unnecessary_cast

import 'service_directory_config_response.dart';

/// GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise integration.
class GitLabEnterpriseConfigResponse {
  /// Immutable. The URI of the GitlabEnterprise host.
  final String hostUri;

  /// The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  final ServiceDirectoryConfigResponse serviceDirectoryConfig;

  /// The SSL certificate to use in requests to GitLab Enterprise instances.
  final String sslCa;

  /// Creates a new [GitLabEnterpriseConfigResponse].
  /// [hostUri] Immutable. The URI of the GitlabEnterprise host.
  /// [serviceDirectoryConfig] The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  /// [sslCa] The SSL certificate to use in requests to GitLab Enterprise instances.
  GitLabEnterpriseConfigResponse({
    required this.hostUri,
    required this.serviceDirectoryConfig,
    required this.sslCa,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostUri'] = hostUri;
    map['serviceDirectoryConfig'] = serviceDirectoryConfig.toMap();
    map['sslCa'] = sslCa;
    return map;
  }

  factory GitLabEnterpriseConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitLabEnterpriseConfigResponse(
      hostUri: map['hostUri'] as String,
      serviceDirectoryConfig: ServiceDirectoryConfigResponse.fromMap(
          (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] as String,
    );
  }
}
