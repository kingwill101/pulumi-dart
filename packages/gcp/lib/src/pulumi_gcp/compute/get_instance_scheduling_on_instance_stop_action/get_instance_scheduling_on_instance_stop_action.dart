// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool discardLocalSsd;

  GetInstanceSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discardLocalSsd'] = discardLocalSsd;
    return map;
  }

  factory GetInstanceSchedulingOnInstanceStopAction.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] as bool,
    );
  }
}
