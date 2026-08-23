// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to reconcile to the Bucket source kind type.
class BucketDefinition {
  /// Plaintext access key used to securely access the S3 bucket
  final pulumi.Input<String>? accessKey;
  /// The bucket name to sync from the url endpoint for the flux configuration.
  final pulumi.Input<String>? bucketName;
  /// Specify whether to use insecure communication when puling data from the S3 bucket.
  final pulumi.Input<bool>? insecure;
  /// Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  final pulumi.Input<String>? localAuthRef;
  /// The interval at which to re-reconcile the cluster bucket source with the remote.
  final pulumi.Input<double>? syncIntervalInSeconds;
  /// The maximum time to attempt to reconcile the cluster bucket source with the remote.
  final pulumi.Input<double>? timeoutInSeconds;
  /// The URL to sync for the flux configuration S3 bucket.
  final pulumi.Input<String>? url;

  /// Creates a new [BucketDefinition].
  /// [accessKey] Plaintext access key used to securely access the S3 bucket
  /// [bucketName] The bucket name to sync from the url endpoint for the flux configuration.
  /// [insecure] Specify whether to use insecure communication when puling data from the S3 bucket.
  /// [localAuthRef] Name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets.
  /// [syncIntervalInSeconds] The interval at which to re-reconcile the cluster bucket source with the remote.
  /// [timeoutInSeconds] The maximum time to attempt to reconcile the cluster bucket source with the remote.
  /// [url] The URL to sync for the flux configuration S3 bucket.
  const BucketDefinition({
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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insecure: (() { final guardedValue = map['insecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthRef: (() { final guardedValue = map['localAuthRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncIntervalInSeconds: (() { final guardedValue = map['syncIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
