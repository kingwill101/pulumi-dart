// ignore_for_file: unused_element, unnecessary_cast


class ListenerPortRange {
  /// The initial listening port used to receive requests and forward them to terminal nodes.
  final int fromPort;
  /// The end listening port used to receive requests and forward them to terminal nodes.
  final int toPort;

  /// Creates a new [ListenerPortRange].
  /// [fromPort] The initial listening port used to receive requests and forward them to terminal nodes.
  /// [toPort] The end listening port used to receive requests and forward them to terminal nodes.
  ListenerPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory ListenerPortRange.fromMap(Map<String, dynamic> map) {
    return ListenerPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

