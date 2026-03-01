// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool discardLocalSsd;

  /// Creates a new [GetRegionInstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  GetRegionInstanceTemplateSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'discardLocalSsd': discardLocalSsd};
  }

  factory GetRegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] as bool,
    );
  }
}
