// ignore_for_file: unused_element, unnecessary_cast


/// Parameters to reconcile to the Bucket source kind type.
class BucketDefinition {
  /// Plaintext access key used to securely access the S3 bucket
  final String? accessKey;
  /// The bucket name to sync from the url endpoint for the flux configuration.
  final String? bucketName;
  /// Specify whether to use insecure communication when puling data from the S3 bucket.
  final bool? insecure;
  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final String? localAuthRef;
  /// The interval at which to re-reconcile the cluster bucket source with the remote.
  final double? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the cluster bucket source with the remote.
  final double? timeoutInSeconds;
  /// The URL to sync for the flux configuration S3 bucket.
  final String? url;

  /// Creates a new [BucketDefinition].
  /// [accessKey] Plaintext access key used to securely access the S3 bucket
  /// [bucketName] The bucket name to sync from the url endpoint for the flux configuration.
  /// [insecure] Specify whether to use insecure communication when puling data from the S3 bucket.
  /// [localAuthRef] Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the cluster bucket source with the remote.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the cluster bucket source with the remote.
  /// [url] The URL to sync for the flux configuration S3 bucket.
  BucketDefinition({
    this.accessKey,
    this.bucketName,
    this.insecure,
    this.localAuthRef,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'bucketName': ?bucketName,
      'insecure': ?insecure,
      'localAuthRef': ?localAuthRef,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': ?url,
    };
  }

  factory BucketDefinition.fromMap(Map<String, dynamic> map) {
    return BucketDefinition(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      insecure: map['insecure'] == null ? null : map['insecure'] as bool,
      localAuthRef: map['localAuthRef'] == null ? null : map['localAuthRef'] as String,
      syncIntervalInSeconds: map['syncIntervalInSeconds'] == null ? null : map['syncIntervalInSeconds'] as double,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as double,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

