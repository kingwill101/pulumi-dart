// ignore_for_file: unused_element, unnecessary_cast

class StackSetManagedExecution {
  /// When set to true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order. Default is false.
  final bool? active;

  StackSetManagedExecution({
    this.active,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    return map;
  }

  factory StackSetManagedExecution.fromMap(Map<String, dynamic> map) {
    return StackSetManagedExecution(
      active: map['active'] == null ? null : map['active'] as bool,
    );
  }
}
