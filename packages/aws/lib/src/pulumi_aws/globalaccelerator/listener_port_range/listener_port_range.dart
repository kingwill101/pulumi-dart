// ignore_for_file: unused_element, unnecessary_cast

class ListenerPortRange {
  /// The first port in the range of ports, inclusive.
  final int? fromPort;

  /// The last port in the range of ports, inclusive.
  final int? toPort;

  ListenerPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromPortValue = fromPort;
    if (fromPortValue != null) {
      map['fromPort'] = fromPortValue;
    }
    final toPortValue = toPort;
    if (toPortValue != null) {
      map['toPort'] = toPortValue;
    }
    return map;
  }

  factory ListenerPortRange.fromMap(Map<String, dynamic> map) {
    return ListenerPortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}
