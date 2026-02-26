// ignore_for_file: unused_element, unnecessary_cast

/// Execution configuration for a workload.
class ExecutionConfigResponse2 {
  /// Optional. Applies to sessions only. The duration to keep the session alive while it's idling. Exceeding this threshold causes the session to terminate. This field cannot be set on a batch workload. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)). Defaults to 1 hour if not set. If both ttl and idle_ttl are specified for an interactive session, the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idle_ttl or when ttl has been exceeded, whichever occurs first.
  final String idleTtl;

  /// Optional. The Cloud KMS key to use for encryption.
  final String kmsKey;

  /// Optional. Tags used for network traffic control.
  final List<String> networkTags;

  /// Optional. Network URI to connect workload to.
  final String networkUri;

  /// Optional. Service account that used to execute workload.
  final String serviceAccount;

  /// Optional. A Cloud Storage bucket used to stage workload dependencies, config files, and store workload output and other ephemeral data, such as Spark history files. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location according to the region where your workload is running, and then create and manage project-level, per-location staging and temporary buckets. This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final String stagingBucket;

  /// Optional. Subnetwork URI to connect workload to.
  final String subnetworkUri;

  /// Optional. The duration after which the workload will be terminated, specified as the JSON representation for Duration (https://protobuf.dev/programming-guides/proto3/#json). When the workload exceeds this duration, it will be unconditionally terminated without waiting for ongoing work to finish. If ttl is not specified for a batch workload, the workload will be allowed to run until it exits naturally (or run forever without exiting). If ttl is not specified for an interactive session, it defaults to 24 hours. If ttl is not specified for a batch that uses 2.1+ runtime version, it defaults to 4 hours. Minimum value is 10 minutes; maximum value is 14 days. If both ttl and idle_ttl are specified (for an interactive session), the conditions are treated as OR conditions: the workload will be terminated when it has been idle for idle_ttl or when ttl has been exceeded, whichever occurs first.
  final String ttl;

  ExecutionConfigResponse2({
    required this.idleTtl,
    required this.kmsKey,
    required this.networkTags,
    required this.networkUri,
    required this.serviceAccount,
    required this.stagingBucket,
    required this.subnetworkUri,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleTtl'] = idleTtl;
    map['kmsKey'] = kmsKey;
    map['networkTags'] = networkTags;
    map['networkUri'] = networkUri;
    map['serviceAccount'] = serviceAccount;
    map['stagingBucket'] = stagingBucket;
    map['subnetworkUri'] = subnetworkUri;
    map['ttl'] = ttl;
    return map;
  }

  factory ExecutionConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ExecutionConfigResponse2(
      idleTtl: map['idleTtl'] as String,
      kmsKey: map['kmsKey'] as String,
      networkTags: (map['networkTags'] as List).cast<String>(),
      networkUri: map['networkUri'] as String,
      serviceAccount: map['serviceAccount'] as String,
      stagingBucket: map['stagingBucket'] as String,
      subnetworkUri: map['subnetworkUri'] as String,
      ttl: map['ttl'] as String,
    );
  }
}
