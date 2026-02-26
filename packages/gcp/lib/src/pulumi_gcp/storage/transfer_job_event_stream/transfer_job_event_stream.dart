// ignore_for_file: unused_element, unnecessary_cast

class TransferJobEventStream {
  /// Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? eventStreamExpirationTime;

  /// Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? eventStreamStartTime;

  /// Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.
  final String name;

  TransferJobEventStream({
    this.eventStreamExpirationTime,
    this.eventStreamStartTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventStreamExpirationTimeValue = eventStreamExpirationTime;
    if (eventStreamExpirationTimeValue != null) {
      map['eventStreamExpirationTime'] = eventStreamExpirationTimeValue;
    }
    final eventStreamStartTimeValue = eventStreamStartTime;
    if (eventStreamStartTimeValue != null) {
      map['eventStreamStartTime'] = eventStreamStartTimeValue;
    }
    map['name'] = name;
    return map;
  }

  factory TransferJobEventStream.fromMap(Map<String, dynamic> map) {
    return TransferJobEventStream(
      eventStreamExpirationTime: map['eventStreamExpirationTime'] == null
          ? null
          : map['eventStreamExpirationTime'] as String,
      eventStreamStartTime: map['eventStreamStartTime'] == null
          ? null
          : map['eventStreamStartTime'] as String,
      name: map['name'] as String,
    );
  }
}
