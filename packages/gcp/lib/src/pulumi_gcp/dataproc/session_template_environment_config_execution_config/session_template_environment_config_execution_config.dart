// ignore_for_file: unused_element, unnecessary_cast

import '../session_template_environment_config_execution_config_authentication_config/session_template_environment_config_execution_config_authentication_config.dart';

class SessionTemplateEnvironmentConfigExecutionConfig {
  /// Authentication configuration for a workload is used to set the default identity for the workload execution.
  /// Structure is documented below.
  final SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig?
      authenticationConfig;

  /// The duration to keep the session alive while it's idling.
  /// Exceeding this threshold causes the session to terminate. Minimum value is 10 minutes; maximum value is 14 day.
  /// Defaults to 1 hour if not set. If both ttl and idleTtl are specified for an interactive session, the conditions
  /// are treated as OR conditions: the workload will be terminated when it has been idle for idleTtl or when ttl has
  /// been exceeded, whichever occurs first.
  final String? idleTtl;

  /// The Cloud KMS key to use for encryption.
  final String? kmsKey;

  /// Tags used for network traffic control.
  final List<String>? networkTags;

  /// Service account that used to execute workload.
  final String? serviceAccount;

  /// A Cloud Storage bucket used to stage workload dependencies, config files, and store
  /// workload output and other ephemeral data, such as Spark history files. If you do not specify a staging bucket,
  /// Cloud Dataproc will determine a Cloud Storage location according to the region where your workload is running,
  /// and then create and manage project-level, per-location staging and temporary buckets.
  /// This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final String? stagingBucket;

  /// Subnetwork configuration for workload execution.
  final String? subnetworkUri;

  /// The duration after which the workload will be terminated.
  /// When the workload exceeds this duration, it will be unconditionally terminated without waiting for ongoing
  /// work to finish. If ttl is not specified for a session workload, the workload will be allowed to run until it
  /// exits naturally (or run forever without exiting). If ttl is not specified for an interactive session,
  /// it defaults to 24 hours. If ttl is not specified for a batch that uses 2.1+ runtime version, it defaults to 4 hours.
  /// Minimum value is 10 minutes; maximum value is 14 days. If both ttl and idleTtl are specified (for an interactive session),
  /// the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idleTtl or
  /// when ttl has been exceeded, whichever occurs first.
  final String? ttl;

  SessionTemplateEnvironmentConfigExecutionConfig({
    this.authenticationConfig,
    this.idleTtl,
    this.kmsKey,
    this.networkTags,
    this.serviceAccount,
    this.stagingBucket,
    this.subnetworkUri,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationConfigValue = authenticationConfig;
    if (authenticationConfigValue != null) {
      map['authenticationConfig'] = authenticationConfigValue.toMap();
    }
    final idleTtlValue = idleTtl;
    if (idleTtlValue != null) {
      map['idleTtl'] = idleTtlValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final stagingBucketValue = stagingBucket;
    if (stagingBucketValue != null) {
      map['stagingBucket'] = stagingBucketValue;
    }
    final subnetworkUriValue = subnetworkUri;
    if (subnetworkUriValue != null) {
      map['subnetworkUri'] = subnetworkUriValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory SessionTemplateEnvironmentConfigExecutionConfig.fromMap(
      Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfigExecutionConfig(
      authenticationConfig: map['authenticationConfig'] == null
          ? null
          : SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig
              .fromMap(
                  (map['authenticationConfig'] as Map).cast<String, dynamic>()),
      idleTtl: map['idleTtl'] == null ? null : map['idleTtl'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      stagingBucket:
          map['stagingBucket'] == null ? null : map['stagingBucket'] as String,
      subnetworkUri:
          map['subnetworkUri'] == null ? null : map['subnetworkUri'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
    );
  }
}
