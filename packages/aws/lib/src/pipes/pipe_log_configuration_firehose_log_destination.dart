// ignore_for_file: unused_element, unnecessary_cast

class PipeLogConfigurationFirehoseLogDestination {
  /// Amazon Resource Name (ARN) of the Kinesis Data Firehose delivery stream to which EventBridge delivers the pipe log records.
  final String deliveryStreamArn;

  /// Creates a new [PipeLogConfigurationFirehoseLogDestination].
  /// [deliveryStreamArn] Amazon Resource Name (ARN) of the Kinesis Data Firehose delivery stream to which EventBridge delivers the pipe log records.
  PipeLogConfigurationFirehoseLogDestination({required this.deliveryStreamArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'deliveryStreamArn': deliveryStreamArn};
  }

  factory PipeLogConfigurationFirehoseLogDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeLogConfigurationFirehoseLogDestination(
      deliveryStreamArn: map['deliveryStreamArn'] as String,
    );
  }
}
