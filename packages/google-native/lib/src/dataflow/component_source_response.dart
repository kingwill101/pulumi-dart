// ignore_for_file: unused_element, unnecessary_cast

/// Description of an interstitial value between transforms in an execution stage.
class ComponentSourceResponse {
  /// Dataflow service generated name for this source.
  final String name;

  /// User name for the original user transform or collection with which this source is most closely associated.
  final String originalTransformOrCollection;

  /// Human-readable name for this transform; may be user or system generated.
  final String userName;

  /// Creates a new [ComponentSourceResponse].
  /// [name] Dataflow service generated name for this source.
  /// [originalTransformOrCollection] User name for the original user transform or collection with which this source is most closely associated.
  /// [userName] Human-readable name for this transform; may be user or system generated.
  ComponentSourceResponse({
    required this.name,
    required this.originalTransformOrCollection,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'originalTransformOrCollection': originalTransformOrCollection,
      'userName': userName,
    };
  }

  factory ComponentSourceResponse.fromMap(Map<String, dynamic> map) {
    return ComponentSourceResponse(
      name: map['name'] as String,
      originalTransformOrCollection:
          map['originalTransformOrCollection'] as String,
      userName: map['userName'] as String,
    );
  }
}
