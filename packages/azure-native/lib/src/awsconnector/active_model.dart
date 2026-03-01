// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Active
class ActiveModel {
  /// When true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order.
  final bool? active;

  /// Creates a new [ActiveModel].
  /// [active] When true, StackSets performs non-conflicting operations concurrently and queues conflicting operations. After conflicting operations finish, StackSets starts queued operations in request order.
  ActiveModel({
    this.active,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
    };
  }

  factory ActiveModel.fromMap(Map<String, dynamic> map) {
    return ActiveModel(
      active: map['active'] == null ? null : map['active'] as bool,
    );
  }
}

