// ignore_for_file: unused_element, unnecessary_cast

class EventTargetKinesisTarget {
  /// The JSON path to be extracted from the event and used as the partition key.
  final String? partitionKeyPath;

  /// Creates a new [EventTargetKinesisTarget].
  /// [partitionKeyPath] The JSON path to be extracted from the event and used as the partition key.
  EventTargetKinesisTarget({
    this.partitionKeyPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final partitionKeyPathValue = partitionKeyPath;
    if (partitionKeyPathValue != null) {
      map['partitionKeyPath'] = partitionKeyPathValue;
    }
    return map;
  }

  factory EventTargetKinesisTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetKinesisTarget(
      partitionKeyPath: map['partitionKeyPath'] == null
          ? null
          : map['partitionKeyPath'] as String,
    );
  }
}
