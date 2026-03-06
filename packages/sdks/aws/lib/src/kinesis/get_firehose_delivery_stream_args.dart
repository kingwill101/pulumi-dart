// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kinesis_get_firehose_delivery_stream_get_firehose_delivery_stream_args_doc}
/// Arguments for getFirehoseDeliveryStream.
/// {@endtemplate}
/// {@macro pulumi_kinesis_get_firehose_delivery_stream_get_firehose_delivery_stream_args_doc}
class GetFirehoseDeliveryStreamArgs {
  /// Name of the Kinesis Firehose Delivery Stream.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFirehoseDeliveryStreamArgs].
  /// [name] Name of the Kinesis Firehose Delivery Stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetFirehoseDeliveryStreamArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetFirehoseDeliveryStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetFirehoseDeliveryStreamArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

