// ignore_for_file: unused_element, unnecessary_cast

class EventDestinationKinesisDestination {
  /// The ARN of the role that has permissions to access the Kinesis Stream
  final String roleArn;

  /// The ARN of the Kinesis Stream
  final String streamArn;

  EventDestinationKinesisDestination({
    required this.roleArn,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleArn'] = roleArn;
    map['streamArn'] = streamArn;
    return map;
  }

  factory EventDestinationKinesisDestination.fromMap(Map<String, dynamic> map) {
    return EventDestinationKinesisDestination(
      roleArn: map['roleArn'] as String,
      streamArn: map['streamArn'] as String,
    );
  }
}
