// ignore_for_file: unused_element, unnecessary_cast

/// Description of a transform executed as part of an execution stage.
class ComponentTransform {
  /// Dataflow service generated name for this source.
  final String? name;

  /// User name for the original user transform with which this transform is most closely associated.
  final String? originalTransform;

  /// Human-readable name for this transform; may be user or system generated.
  final String? userName;

  ComponentTransform({
    this.name,
    this.originalTransform,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final originalTransformValue = originalTransform;
    if (originalTransformValue != null) {
      map['originalTransform'] = originalTransformValue;
    }
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory ComponentTransform.fromMap(Map<String, dynamic> map) {
    return ComponentTransform(
      name: map['name'] == null ? null : map['name'] as String,
      originalTransform: map['originalTransform'] == null
          ? null
          : map['originalTransform'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}
