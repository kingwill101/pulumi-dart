// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_bitbucket_cloud_config/connection_bitbucket_cloud_config2.dart';
import '../connection_bitbucket_data_center_config/connection_bitbucket_data_center_config2.dart';
import '../connection_crypto_key_config/connection_crypto_key_config.dart';
import '../connection_github_config/connection_github_config2.dart';
import '../connection_github_enterprise_config/connection_github_enterprise_config2.dart';
import '../connection_gitlab_config/connection_gitlab_config2.dart';
import '../connection_gitlab_enterprise_config/connection_gitlab_enterprise_config.dart';

/// The set of arguments for Connection.
class ConnectionArgs3 {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Configuration for connections to an instance of Bitbucket Cloud.
  /// Structure is documented below.
  final Input<ConnectionBitbucketCloudConfig2>? bitbucketCloudConfig;

  /// Configuration for connections to an instance of Bitbucket Data Center.
  /// Structure is documented below.
  final Input<ConnectionBitbucketDataCenterConfig2>? bitbucketDataCenterConfig;

  /// Required. Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// connection_id from the method_signature of Create RPC
  final Input<String> connectionId;

  /// The crypto key configuration. This field is used by the Customer-managed
  /// encryption keys (CMEK) feature.
  /// Structure is documented below.
  final Input<ConnectionCryptoKeyConfig>? cryptoKeyConfig;

  /// Optional. If disabled is set to true, functionality is disabled for this connection.
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  final Input<bool>? disabled;

  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  final Input<ConnectionGithubConfig2>? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  final Input<ConnectionGithubEnterpriseConfig2>? githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com.
  /// Structure is documented below.
  final Input<ConnectionGitlabConfig2>? gitlabConfig;

  /// Configuration for connections to an instance of GitLab Enterprise.
  /// Structure is documented below.
  final Input<ConnectionGitlabEnterpriseConfig>? gitlabEnterpriseConfig;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ConnectionArgs3({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    required this.connectionId,
    this.cryptoKeyConfig,
    this.disabled,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.gitlabEnterpriseConfig,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final bitbucketCloudConfigValue = bitbucketCloudConfig;
    if (bitbucketCloudConfigValue != null) {
      map['bitbucketCloudConfig'] = Input.mapOptionalInputValue<
              ConnectionBitbucketCloudConfig2, Map<String, dynamic>>(
          bitbucketCloudConfigValue, (value) => value.toMap());
    }
    final bitbucketDataCenterConfigValue = bitbucketDataCenterConfig;
    if (bitbucketDataCenterConfigValue != null) {
      map['bitbucketDataCenterConfig'] = Input.mapOptionalInputValue<
              ConnectionBitbucketDataCenterConfig2, Map<String, dynamic>>(
          bitbucketDataCenterConfigValue, (value) => value.toMap());
    }
    map['connectionId'] = connectionId;
    final cryptoKeyConfigValue = cryptoKeyConfig;
    if (cryptoKeyConfigValue != null) {
      map['cryptoKeyConfig'] = Input.mapOptionalInputValue<
          ConnectionCryptoKeyConfig,
          Map<String, dynamic>>(cryptoKeyConfigValue, (value) => value.toMap());
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final githubConfigValue = githubConfig;
    if (githubConfigValue != null) {
      map['githubConfig'] = Input.mapOptionalInputValue<ConnectionGithubConfig2,
          Map<String, dynamic>>(githubConfigValue, (value) => value.toMap());
    }
    final githubEnterpriseConfigValue = githubEnterpriseConfig;
    if (githubEnterpriseConfigValue != null) {
      map['githubEnterpriseConfig'] = Input.mapOptionalInputValue<
              ConnectionGithubEnterpriseConfig2, Map<String, dynamic>>(
          githubEnterpriseConfigValue, (value) => value.toMap());
    }
    final gitlabConfigValue = gitlabConfig;
    if (gitlabConfigValue != null) {
      map['gitlabConfig'] = Input.mapOptionalInputValue<ConnectionGitlabConfig2,
          Map<String, dynamic>>(gitlabConfigValue, (value) => value.toMap());
    }
    final gitlabEnterpriseConfigValue = gitlabEnterpriseConfig;
    if (gitlabEnterpriseConfigValue != null) {
      map['gitlabEnterpriseConfig'] = Input.mapOptionalInputValue<
              ConnectionGitlabEnterpriseConfig, Map<String, dynamic>>(
          gitlabEnterpriseConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConnectionArgs3.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs3(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bitbucketCloudConfig:
          Input.asOptionalInput<ConnectionBitbucketCloudConfig2>(
              map['bitbucketCloudConfig']),
      bitbucketDataCenterConfig:
          Input.asOptionalInput<ConnectionBitbucketDataCenterConfig2>(
              map['bitbucketDataCenterConfig']),
      connectionId: Input.asInput<String>(map['connectionId']),
      cryptoKeyConfig: Input.asOptionalInput<ConnectionCryptoKeyConfig>(
          map['cryptoKeyConfig']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      etag: Input.asOptionalInput<String>(map['etag']),
      githubConfig:
          Input.asOptionalInput<ConnectionGithubConfig2>(map['githubConfig']),
      githubEnterpriseConfig:
          Input.asOptionalInput<ConnectionGithubEnterpriseConfig2>(
              map['githubEnterpriseConfig']),
      gitlabConfig:
          Input.asOptionalInput<ConnectionGitlabConfig2>(map['gitlabConfig']),
      gitlabEnterpriseConfig:
          Input.asOptionalInput<ConnectionGitlabEnterpriseConfig>(
              map['gitlabEnterpriseConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
