// ignore_for_file: unused_element, unnecessary_cast


class StackSetManagedExecution {
  /// When set to true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order. Default is false.
  final bool? active;

  /// Creates a new [StackSetManagedExecution].
  /// [active] When set to true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order. Default is false.
  StackSetManagedExecution({
    this.active,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
    };
  }

  factory StackSetManagedExecution.fromMap(Map<String, dynamic> map) {
    return StackSetManagedExecution(
      active: map['active'] == null ? null : map['active'] as bool,
    );
  }
}

