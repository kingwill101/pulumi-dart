// ignore_for_file: unused_element, unnecessary_cast


/// Description of a transform executed as part of an execution stage.
class ComponentTransform {
  /// Dataflow service generated name for this source.
  final String? name;
  /// User name for the original user transform with which this transform is most closely associated.
  final String? originalTransform;
  /// Human-readable name for this transform; may be user or system generated.
  final String? userName;

  /// Creates a new [ComponentTransform].
  /// [name] Dataflow service generated name for this source.
  /// [originalTransform] User name for the original user transform with which this transform is most closely associated.
  /// [userName] Human-readable name for this transform; may be user or system generated.
  ComponentTransform({
    this.name,
    this.originalTransform,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'originalTransform': ?originalTransform,
      'userName': ?userName,
    };
  }

  factory ComponentTransform.fromMap(Map<String, dynamic> map) {
    return ComponentTransform(
      name: map['name'] == null ? null : map['name'] as String,
      originalTransform: map['originalTransform'] == null ? null : map['originalTransform'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

