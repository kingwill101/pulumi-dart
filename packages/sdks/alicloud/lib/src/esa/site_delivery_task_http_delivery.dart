// ignore_for_file: unused_element, unnecessary_cast

import 'site_delivery_task_http_delivery_standard_auth_param.dart';

class SiteDeliveryTaskHttpDelivery {
  final String? compress;
  final String? destUrl;
  final Map<String, String>? headerParam;
  final String? logBodyPrefix;
  final String? logBodySuffix;
  final int? maxBatchMb;
  final int? maxBatchSize;
  final int? maxRetry;
  final Map<String, String>? queryParam;
  final bool? standardAuthOn;
  /// See `standard_auth_param` below.
  final SiteDeliveryTaskHttpDeliveryStandardAuthParam? standardAuthParam;
  final int? transformTimeout;

  /// Creates a new [SiteDeliveryTaskHttpDelivery].
  /// [compress] Optional.
  /// [destUrl] Optional.
  /// [headerParam] Optional.
  /// [logBodyPrefix] Optional.
  /// [logBodySuffix] Optional.
  /// [maxBatchMb] Optional.
  /// [maxBatchSize] Optional.
  /// [maxRetry] Optional.
  /// [queryParam] Optional.
  /// [standardAuthOn] Optional.
  /// [standardAuthParam] See `standard_auth_param` below.
  /// [transformTimeout] Optional.
  SiteDeliveryTaskHttpDelivery({
    this.compress,
    this.destUrl,
    this.headerParam,
    this.logBodyPrefix,
    this.logBodySuffix,
    this.maxBatchMb,
    this.maxBatchSize,
    this.maxRetry,
    this.queryParam,
    this.standardAuthOn,
    this.standardAuthParam,
    this.transformTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compress': ?compress,
      'destUrl': ?destUrl,
      'headerParam': ?headerParam,
      'logBodyPrefix': ?logBodyPrefix,
      'logBodySuffix': ?logBodySuffix,
      'maxBatchMb': ?maxBatchMb,
      'maxBatchSize': ?maxBatchSize,
      'maxRetry': ?maxRetry,
      'queryParam': ?queryParam,
      'standardAuthOn': ?standardAuthOn,
      'standardAuthParam': ?standardAuthParam == null ? null : standardAuthParam!.toMap(),
      'transformTimeout': ?transformTimeout,
    };
  }

  factory SiteDeliveryTaskHttpDelivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskHttpDelivery(
      compress: map['compress'] == null ? null : map['compress'] as String,
      destUrl: map['destUrl'] == null ? null : map['destUrl'] as String,
      headerParam: map['headerParam'] == null ? null : (map['headerParam'] as Map).cast<String, String>(),
      logBodyPrefix: map['logBodyPrefix'] == null ? null : map['logBodyPrefix'] as String,
      logBodySuffix: map['logBodySuffix'] == null ? null : map['logBodySuffix'] as String,
      maxBatchMb: map['maxBatchMb'] == null ? null : map['maxBatchMb'] as int,
      maxBatchSize: map['maxBatchSize'] == null ? null : map['maxBatchSize'] as int,
      maxRetry: map['maxRetry'] == null ? null : map['maxRetry'] as int,
      queryParam: map['queryParam'] == null ? null : (map['queryParam'] as Map).cast<String, String>(),
      standardAuthOn: map['standardAuthOn'] == null ? null : map['standardAuthOn'] as bool,
      standardAuthParam: map['standardAuthParam'] == null ? null : SiteDeliveryTaskHttpDeliveryStandardAuthParam.fromMap((map['standardAuthParam'] as Map).cast<String, dynamic>()),
      transformTimeout: map['transformTimeout'] == null ? null : map['transformTimeout'] as int,
    );
  }
}

