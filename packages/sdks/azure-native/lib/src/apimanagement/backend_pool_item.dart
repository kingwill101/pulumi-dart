// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Backend pool service information
class BackendPoolItem {
  /// The unique ARM id of the backend entity. The ARM id should refer to an already existing backend entity.
  final pulumi.Input<String> id;
  /// The priority of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  final pulumi.Input<int>? priority;
  /// The weight of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  final pulumi.Input<int>? weight;

  /// Creates a new [BackendPoolItem].
  /// [id] The unique ARM id of the backend entity. The ARM id should refer to an already existing backend entity.
  /// [priority] The priority of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  /// [weight] The weight of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  BackendPoolItem({
    required this.id,
    this.priority,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'priority': ?priority,
      'weight': ?weight,
    };
  }

  factory BackendPoolItem.fromMap(Map<String, dynamic> map) {
    return BackendPoolItem(
      id: (map['id'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

