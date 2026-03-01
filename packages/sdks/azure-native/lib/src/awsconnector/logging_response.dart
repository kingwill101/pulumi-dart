// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_setup_response.dart';

/// Definition of Logging
class LoggingResponse {
  /// The Amazon S3 bucket to store the access logs in, for example, ``myawslogbucket.s3.amazonaws.com``.
  final String? bucket;
  /// <p>The cluster control plane logging configuration for your cluster.</p>
  final List<LogSetupResponse>? clusterLogging;
  /// Specifies whether you want CloudFront to include cookies in access logs, specify ``true`` for ``IncludeCookies``. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify ``false`` for ``IncludeCookies``.
  final bool? includeCookies;
  /// An optional string that you want CloudFront to prefix to the access log ``filenames`` for this distribution, for example, ``myprefix/``. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty ``Prefix`` element in the ``Logging`` element.
  final String? prefix;

  /// Creates a new [LoggingResponse].
  /// [bucket] The Amazon S3 bucket to store the access logs in, for example, ``myawslogbucket.s3.amazonaws.com``.
  /// [clusterLogging] <p>The cluster control plane logging configuration for your cluster.</p>
  /// [includeCookies] Specifies whether you want CloudFront to include cookies in access logs, specify ``true`` for ``IncludeCookies``. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify ``false`` for ``IncludeCookies``.
  /// [prefix] An optional string that you want CloudFront to prefix to the access log ``filenames`` for this distribution, for example, ``myprefix/``. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty ``Prefix`` element in the ``Logging`` element.
  LoggingResponse({
    this.bucket,
    this.clusterLogging,
    this.includeCookies,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'clusterLogging': ?clusterLogging == null ? null : pulumi.Input.encodeList<LogSetupResponse, Map<String, dynamic>>(clusterLogging!, (value) => value.toMap()),
      'includeCookies': ?includeCookies,
      'prefix': ?prefix,
    };
  }

  factory LoggingResponse.fromMap(Map<String, dynamic> map) {
    return LoggingResponse(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      clusterLogging: map['clusterLogging'] == null ? null : pulumi.Input.decodeList<LogSetupResponse>(map['clusterLogging'], (value) => LogSetupResponse.fromMap((value as Map).cast<String, dynamic>())),
      includeCookies: map['includeCookies'] == null ? null : map['includeCookies'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

