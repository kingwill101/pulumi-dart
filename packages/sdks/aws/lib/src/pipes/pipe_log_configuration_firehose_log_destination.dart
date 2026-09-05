// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeLogConfigurationFirehoseLogDestination {
  /// ARN of the Kinesis Data Firehose delivery stream to which EventBridge delivers the pipe log records.
  final pulumi.Input<String> deliveryStreamArn;

  /// Creates a new [PipeLogConfigurationFirehoseLogDestination].
  /// [deliveryStreamArn] ARN of the Kinesis Data Firehose delivery stream to which EventBridge delivers the pipe log records.
  const PipeLogConfigurationFirehoseLogDestination({
    required this.deliveryStreamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStreamArn': deliveryStreamArn,
    };
  }

  factory PipeLogConfigurationFirehoseLogDestination.fromMap(Map<String, dynamic> map) {
    return PipeLogConfigurationFirehoseLogDestination(
      deliveryStreamArn: pulumi.Input.fromValue(map['deliveryStreamArn'] as String),
    );
  }
}
