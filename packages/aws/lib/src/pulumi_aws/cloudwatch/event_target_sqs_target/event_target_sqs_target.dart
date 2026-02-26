// ignore_for_file: unused_element, unnecessary_cast

class EventTargetSqsTarget {
  /// The FIFO message group ID to use as the target.
  final String? messageGroupId;

  EventTargetSqsTarget({
    this.messageGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageGroupIdValue = messageGroupId;
    if (messageGroupIdValue != null) {
      map['messageGroupId'] = messageGroupIdValue;
    }
    return map;
  }

  factory EventTargetSqsTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetSqsTarget(
      messageGroupId: map['messageGroupId'] == null
          ? null
          : map['messageGroupId'] as String,
    );
  }
}
