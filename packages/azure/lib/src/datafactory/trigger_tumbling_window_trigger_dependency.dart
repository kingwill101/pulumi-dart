// ignore_for_file: unused_element, unnecessary_cast


class TriggerTumblingWindowTriggerDependency {
  /// The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency.
  final String? offset;
  /// The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss).
  final String? size;
  /// The dependency trigger name. If not specified, it will use self dependency.
  final String? triggerName;

  /// Creates a new [TriggerTumblingWindowTriggerDependency].
  /// [offset] The offset of the dependency trigger. Must be in Timespan format (±hh:mm:ss) and must be a negative offset for a self dependency.
  /// [size] The size of the dependency tumbling window. Must be in Timespan format (hh:mm:ss).
  /// [triggerName] The dependency trigger name. If not specified, it will use self dependency.
  TriggerTumblingWindowTriggerDependency({
    this.offset,
    this.size,
    this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': ?offset,
      'size': ?size,
      'triggerName': ?triggerName,
    };
  }

  factory TriggerTumblingWindowTriggerDependency.fromMap(Map<String, dynamic> map) {
    return TriggerTumblingWindowTriggerDependency(
      offset: map['offset'] == null ? null : map['offset'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      triggerName: map['triggerName'] == null ? null : map['triggerName'] as String,
    );
  }
}

