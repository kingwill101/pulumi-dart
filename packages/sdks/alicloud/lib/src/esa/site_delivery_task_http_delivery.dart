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
  const SiteDeliveryTaskHttpDelivery({
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
      compress: (() { final guardedValue = map['compress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destUrl: (() { final guardedValue = map['destUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerParam: (() { final guardedValue = map['headerParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      logBodyPrefix: (() { final guardedValue = map['logBodyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logBodySuffix: (() { final guardedValue = map['logBodySuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBatchMb: (() { final guardedValue = map['maxBatchMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxBatchSize: (() { final guardedValue = map['maxBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetry: (() { final guardedValue = map['maxRetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queryParam: (() { final guardedValue = map['queryParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      standardAuthOn: (() { final guardedValue = map['standardAuthOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      standardAuthParam: (() { final guardedValue = map['standardAuthParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteDeliveryTaskHttpDeliveryStandardAuthParam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformTimeout: (() { final guardedValue = map['transformTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

