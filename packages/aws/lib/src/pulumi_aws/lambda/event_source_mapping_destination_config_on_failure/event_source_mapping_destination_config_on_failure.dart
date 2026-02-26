// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingDestinationConfigOnFailure {
  /// ARN of the destination resource, or `kafka://your-topic-name` for Amazon MSK and self-managed Apache Kafka destinations.
  final String destinationArn;

  EventSourceMappingDestinationConfigOnFailure({
    required this.destinationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationArn'] = destinationArn;
    return map;
  }

  factory EventSourceMappingDestinationConfigOnFailure.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingDestinationConfigOnFailure(
      destinationArn: map['destinationArn'] as String,
    );
  }
}
