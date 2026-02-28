// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateSchedulingOnInstanceStopAction {
  /// Whether to discard local SSDs attached to the VM while terminating using `max_run_duration`. Only supports `true` at this point.
  final bool? discardLocalSsd;

  /// Creates a new [InstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] Whether to discard local SSDs attached to the VM while terminating using `max_run_duration`. Only supports `true` at this point.
  InstanceTemplateSchedulingOnInstanceStopAction({
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

  factory InstanceTemplateSchedulingOnInstanceStopAction.fromMap(
      Map<String, dynamic> map) {
    return InstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null
          ? null
          : map['discardLocalSsd'] as bool,
    );
  }
}
