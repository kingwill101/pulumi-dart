// ignore_for_file: unused_element, unnecessary_cast


class EventSourceMappingScalingConfig {
  /// Limits the number of concurrent instances that the Amazon SQS event source can invoke. Must be greater than or equal to 2. See [Configuring maximum concurrency for Amazon SQS event sources](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency). You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase the concurrency beyond 1000.
  final int? maximumConcurrency;

  /// Creates a new [EventSourceMappingScalingConfig].
  /// [maximumConcurrency] Limits the number of concurrent instances that the Amazon SQS event source can invoke. Must be greater than or equal to 2. See [Configuring maximum concurrency for Amazon SQS event sources](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency). You need to raise a [Service Quota Ticket](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) to increase the concurrency beyond 1000.
  EventSourceMappingScalingConfig({
    this.maximumConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumConcurrency': ?maximumConcurrency,
    };
  }

  factory EventSourceMappingScalingConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingScalingConfig(
      maximumConcurrency: map['maximumConcurrency'] == null ? null : map['maximumConcurrency'] as int,
    );
  }
}

