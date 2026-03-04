// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorLogDeliveryWorkerLogDeliveryS3 {
  /// The name of the S3 bucket that is the destination for log delivery.
  final pulumi.Input<String>? bucket;

  /// Specifies whether connector logs get sent to the specified Amazon S3 destination.
  final pulumi.Input<bool> enabled;

  /// The S3 prefix that is the destination for log delivery.
  final pulumi.Input<String>? prefix;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryS3].
  /// [bucket] The name of the S3 bucket that is the destination for log delivery.
  /// [enabled] Specifies whether connector logs get sent to the specified Amazon S3 destination.
  /// [prefix] The S3 prefix that is the destination for log delivery.
  ConnectorLogDeliveryWorkerLogDeliveryS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory ConnectorLogDeliveryWorkerLogDeliveryS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorLogDeliveryWorkerLogDeliveryS3(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
