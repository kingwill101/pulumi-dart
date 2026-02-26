// ignore_for_file: unused_element, unnecessary_cast

/// Standard options for isolating this app profile's traffic from other use cases.
class StandardIsolationResponse {
  /// The priority of requests sent using this app profile.
  final String priority;

  StandardIsolationResponse({
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    return map;
  }

  factory StandardIsolationResponse.fromMap(Map<String, dynamic> map) {
    return StandardIsolationResponse(
      priority: map['priority'] as String,
    );
  }
}
