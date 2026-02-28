// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool discardLocalSsd;

  /// Creates a new [GetInstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  GetInstanceTemplateSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discardLocalSsd'] = discardLocalSsd;
    return map;
  }

  factory GetInstanceTemplateSchedulingOnInstanceStopAction.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] as bool,
    );
  }
}
