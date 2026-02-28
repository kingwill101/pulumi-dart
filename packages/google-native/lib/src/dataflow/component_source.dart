// ignore_for_file: unused_element, unnecessary_cast


/// Description of an interstitial value between transforms in an execution stage.
class ComponentSource {
  /// Dataflow service generated name for this source.
  final String? name;
  /// User name for the original user transform or collection with which this source is most closely associated.
  final String? originalTransformOrCollection;
  /// Human-readable name for this transform; may be user or system generated.
  final String? userName;

  /// Creates a new [ComponentSource].
  /// [name] Dataflow service generated name for this source.
  /// [originalTransformOrCollection] User name for the original user transform or collection with which this source is most closely associated.
  /// [userName] Human-readable name for this transform; may be user or system generated.
  ComponentSource({
    this.name,
    this.originalTransformOrCollection,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'originalTransformOrCollection': ?originalTransformOrCollection,
      'userName': ?userName,
    };
  }

  factory ComponentSource.fromMap(Map<String, dynamic> map) {
    return ComponentSource(
      name: map['name'] == null ? null : map['name'] as String,
      originalTransformOrCollection: map['originalTransformOrCollection'] == null ? null : map['originalTransformOrCollection'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

