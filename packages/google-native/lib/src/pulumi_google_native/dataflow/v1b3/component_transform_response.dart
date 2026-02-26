// ignore_for_file: unused_element, unnecessary_cast

/// Description of a transform executed as part of an execution stage.
class ComponentTransformResponse {
  /// Dataflow service generated name for this source.
  final String name;

  /// User name for the original user transform with which this transform is most closely associated.
  final String originalTransform;

  /// Human-readable name for this transform; may be user or system generated.
  final String userName;

  ComponentTransformResponse({
    required this.name,
    required this.originalTransform,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['originalTransform'] = originalTransform;
    map['userName'] = userName;
    return map;
  }

  factory ComponentTransformResponse.fromMap(Map<String, dynamic> map) {
    return ComponentTransformResponse(
      name: map['name'] as String,
      originalTransform: map['originalTransform'] as String,
      userName: map['userName'] as String,
    );
  }
}
