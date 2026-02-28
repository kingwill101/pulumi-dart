// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool? discardLocalSsd;

  /// Creates a new [InstanceFromTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  InstanceFromTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final discardLocalSsdValue = discardLocalSsd;
    if (discardLocalSsdValue != null) {
      map['discardLocalSsd'] = discardLocalSsdValue;
    }
    return map;
  }

  factory InstanceFromTemplateSchedulingOnInstanceStopAction.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null
          ? null
          : map['discardLocalSsd'] as bool,
    );
  }
}
