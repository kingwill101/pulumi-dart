// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool discardLocalSsd;

  GetRegionInstanceTemplateSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discardLocalSsd'] = discardLocalSsd;
    return map;
  }

  factory GetRegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] as bool,
    );
  }
}
