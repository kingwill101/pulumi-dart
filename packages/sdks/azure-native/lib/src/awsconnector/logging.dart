// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_setup.dart';

/// Definition of Logging
class Logging {
  /// The Amazon S3 bucket to store the access logs in, for example, ``myawslogbucket.s3.amazonaws.com``.
  final pulumi.Input<String>? bucket;
  /// <p>The cluster control plane logging configuration for your cluster.</p>
  final pulumi.Input<List<LogSetup>>? clusterLogging;
  /// Specifies whether you want CloudFront to include cookies in access logs, specify ``true`` for ``IncludeCookies``. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify ``false`` for ``IncludeCookies``.
  final pulumi.Input<bool>? includeCookies;
  /// An optional string that you want CloudFront to prefix to the access log ``filenames`` for this distribution, for example, ``myprefix/``. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty ``Prefix`` element in the ``Logging`` element.
  final pulumi.Input<String>? prefix;

  /// Creates a new [Logging].
  /// [bucket] The Amazon S3 bucket to store the access logs in, for example, ``myawslogbucket.s3.amazonaws.com``.
  /// [clusterLogging] <p>The cluster control plane logging configuration for your cluster.</p>
  /// [includeCookies] Specifies whether you want CloudFront to include cookies in access logs, specify ``true`` for ``IncludeCookies``. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify ``false`` for ``IncludeCookies``.
  /// [prefix] An optional string that you want CloudFront to prefix to the access log ``filenames`` for this distribution, for example, ``myprefix/``. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty ``Prefix`` element in the ``Logging`` element.
  Logging({
    this.bucket,
    this.clusterLogging,
    this.includeCookies,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'clusterLogging': ?pulumi.Input.mapOptionalInputValue<List<LogSetup>, List<Map<String, dynamic>>>(clusterLogging, (value) => pulumi.Input.encodeList<LogSetup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeCookies': ?includeCookies,
      'prefix': ?prefix,
    };
  }

  factory Logging.fromMap(Map<String, dynamic> map) {
    return Logging(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      clusterLogging: map['clusterLogging'] == null ? null : (pulumi.Input.decodeList<LogSetup>(map['clusterLogging']!, (value) => LogSetup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includeCookies: map['includeCookies'] == null ? null : (map['includeCookies']! as bool).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']! as String).input(),
    );
  }
}

