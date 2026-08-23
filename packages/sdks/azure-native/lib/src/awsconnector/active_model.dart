// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Active
class ActiveModel {
  /// When true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order.
  final pulumi.Input<bool>? active;

  /// Creates a new [ActiveModel].
  /// [active] When true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order.
  const ActiveModel({
    this.active,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
    };
  }

  factory ActiveModel.fromMap(Map<String, dynamic> map) {
    return ActiveModel(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
