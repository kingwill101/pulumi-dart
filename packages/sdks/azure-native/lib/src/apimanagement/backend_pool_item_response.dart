// ignore_for_file: unused_element, unnecessary_cast


/// Backend pool service information
class BackendPoolItemResponse {
  /// The unique ARM id of the backend entity. The ARM id should refer to an already existing backend entity.
  final String id;
  /// The priority of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  final int? priority;
  /// The weight of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  final int? weight;

  /// Creates a new [BackendPoolItemResponse].
  /// [id] The unique ARM id of the backend entity. The ARM id should refer to an already existing backend entity.
  /// [priority] The priority of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  /// [weight] The weight of the backend entity in the backend pool. Must be between 0 and 100. It can be also null if the value not specified.
  BackendPoolItemResponse({
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

  factory BackendPoolItemResponse.fromMap(Map<String, dynamic> map) {
    return BackendPoolItemResponse(
      id: map['id'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

