// ignore_for_file: unused_element, unnecessary_cast


class RegionInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool? discardLocalSsd;

  /// Creates a new [RegionInstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  RegionInstanceTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory RegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null ? null : map['discardLocalSsd'] as bool,
    );
  }
}

