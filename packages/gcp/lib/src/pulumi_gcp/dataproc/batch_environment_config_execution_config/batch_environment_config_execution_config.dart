// ignore_for_file: unused_element, unnecessary_cast

import '../batch_environment_config_execution_config_authentication_config/batch_environment_config_execution_config_authentication_config.dart';

class BatchEnvironmentConfigExecutionConfig {
  /// Authentication configuration for a workload is used to set the default identity for the workload execution.
  /// Structure is documented below.
  final BatchEnvironmentConfigExecutionConfigAuthenticationConfig?
      authenticationConfig;

  /// The Cloud KMS key to use for encryption.
  final String? kmsKey;

  /// Tags used for network traffic control.
  final List<String>? networkTags;

  /// Network configuration for workload execution.
  final String? networkUri;

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
  /// work to finish. If ttl is not specified for a batch workload, the workload will be allowed to run until it
  /// exits naturally (or run forever without exiting). If ttl is not specified for an interactive session,
  /// it defaults to 24 hours. If ttl is not specified for a batch that uses 2.1+ runtime version, it defaults to 4 hours.
  /// Minimum value is 10 minutes; maximum value is 14 days. If both ttl and idleTtl are specified (for an interactive session),
  /// the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idleTtl or
  /// when ttl has been exceeded, whichever occurs first.
  final String? ttl;

  BatchEnvironmentConfigExecutionConfig({
    this.authenticationConfig,
    this.kmsKey,
    this.networkTags,
    this.networkUri,
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
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue;
    }
    final networkUriValue = networkUri;
    if (networkUriValue != null) {
      map['networkUri'] = networkUriValue;
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

  factory BatchEnvironmentConfigExecutionConfig.fromMap(
      Map<String, dynamic> map) {
    return BatchEnvironmentConfigExecutionConfig(
      authenticationConfig: map['authenticationConfig'] == null
          ? null
          : BatchEnvironmentConfigExecutionConfigAuthenticationConfig.fromMap(
              (map['authenticationConfig'] as Map).cast<String, dynamic>()),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      networkUri:
          map['networkUri'] == null ? null : map['networkUri'] as String,
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
