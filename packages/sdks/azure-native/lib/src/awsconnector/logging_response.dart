// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Logging
class LoggingResponse {
  /// The Amazon S3 bucket to store the access logs in, for example, ``myawslogbucket.s3.amazonaws.com``.
  final pulumi.Input<String?>? bucket;
  /// Specifies whether you want CloudFront to include cookies in access logs, specify ``true`` for ``IncludeCookies``. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify ``false`` for ``IncludeCookies``.
  final pulumi.Input<bool?>? includeCookies;
  /// An optional string that you want CloudFront to prefix to the access log ``filenames`` for this distribution, for example, ``myprefix/``. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty ``Prefix`` element in the ``Logging`` element.
  final pulumi.Input<String?>? prefix;

  /// Creates a new [LoggingResponse].
  /// [bucket] The Amazon S3 bucket to store the access logs in, for example, ``myawslogbucket.s3.amazonaws.com``.
  /// [includeCookies] Specifies whether you want CloudFront to include cookies in access logs, specify ``true`` for ``IncludeCookies``. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify ``false`` for ``IncludeCookies``.
  /// [prefix] An optional string that you want CloudFront to prefix to the access log ``filenames`` for this distribution, for example, ``myprefix/``. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty ``Prefix`` element in the ``Logging`` element.
  const LoggingResponse({
    this.bucket,
    this.includeCookies,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'includeCookies': ?includeCookies,
      'prefix': ?prefix,
    };
  }

  factory LoggingResponse.fromMap(Map<String, dynamic> map) {
    return LoggingResponse(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeCookies: (() { final guardedValue = map['includeCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
