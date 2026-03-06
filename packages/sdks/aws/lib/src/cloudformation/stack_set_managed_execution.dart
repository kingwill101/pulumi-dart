// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetManagedExecution {
  /// When set to true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order. Default is false.
  final pulumi.Input<bool>? active;

  /// Creates a new [StackSetManagedExecution].
  /// [active] When set to true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order. Default is false.
  const StackSetManagedExecution({
    this.active,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
    };
  }

  factory StackSetManagedExecution.fromMap(Map<String, dynamic> map) {
    return StackSetManagedExecution(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

