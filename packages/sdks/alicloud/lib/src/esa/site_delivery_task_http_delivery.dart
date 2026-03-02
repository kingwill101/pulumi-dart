// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_delivery_task_http_delivery_standard_auth_param.dart';

class SiteDeliveryTaskHttpDelivery {
  final pulumi.Input<String>? compress;
  final pulumi.Input<String>? destUrl;
  final pulumi.Input<Map<String, String>>? headerParam;
  final pulumi.Input<String>? logBodyPrefix;
  final pulumi.Input<String>? logBodySuffix;
  final pulumi.Input<int>? maxBatchMb;
  final pulumi.Input<int>? maxBatchSize;
  final pulumi.Input<int>? maxRetry;
  final pulumi.Input<Map<String, String>>? queryParam;
  final pulumi.Input<bool>? standardAuthOn;
  /// See `standard_auth_param` below.
  final pulumi.Input<SiteDeliveryTaskHttpDeliveryStandardAuthParam>? standardAuthParam;
  final pulumi.Input<int>? transformTimeout;

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
      'standardAuthParam': ?pulumi.Input.mapOptionalInputValue<SiteDeliveryTaskHttpDeliveryStandardAuthParam, Map<String, dynamic>>(standardAuthParam, (value) => value.toMap()),
      'transformTimeout': ?transformTimeout,
    };
  }

  factory SiteDeliveryTaskHttpDelivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskHttpDelivery(
      compress: map['compress'] == null ? null : (map['compress']! as String).input(),
      destUrl: map['destUrl'] == null ? null : (map['destUrl']! as String).input(),
      headerParam: map['headerParam'] == null ? null : ((map['headerParam']! as Map).cast<String, String>()).input(),
      logBodyPrefix: map['logBodyPrefix'] == null ? null : (map['logBodyPrefix']! as String).input(),
      logBodySuffix: map['logBodySuffix'] == null ? null : (map['logBodySuffix']! as String).input(),
      maxBatchMb: map['maxBatchMb'] == null ? null : (map['maxBatchMb']! as int).input(),
      maxBatchSize: map['maxBatchSize'] == null ? null : (map['maxBatchSize']! as int).input(),
      maxRetry: map['maxRetry'] == null ? null : (map['maxRetry']! as int).input(),
      queryParam: map['queryParam'] == null ? null : ((map['queryParam']! as Map).cast<String, String>()).input(),
      standardAuthOn: map['standardAuthOn'] == null ? null : (map['standardAuthOn']! as bool).input(),
      standardAuthParam: map['standardAuthParam'] == null ? null : (SiteDeliveryTaskHttpDeliveryStandardAuthParam.fromMap((map['standardAuthParam']! as Map).cast<String, dynamic>())).input(),
      transformTimeout: map['transformTimeout'] == null ? null : (map['transformTimeout']! as int).input(),
    );
  }
}

