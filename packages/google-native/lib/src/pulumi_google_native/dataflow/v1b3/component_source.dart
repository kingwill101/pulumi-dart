// ignore_for_file: unused_element, unnecessary_cast

/// Description of an interstitial value between transforms in an execution stage.
class ComponentSource {
  /// Dataflow service generated name for this source.
  final String? name;

  /// User name for the original user transform or collection with which this source is most closely associated.
  final String? originalTransformOrCollection;

  /// Human-readable name for this transform; may be user or system generated.
  final String? userName;

  ComponentSource({
    this.name,
    this.originalTransformOrCollection,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final originalTransformOrCollectionValue = originalTransformOrCollection;
    if (originalTransformOrCollectionValue != null) {
      map['originalTransformOrCollection'] = originalTransformOrCollectionValue;
    }
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory ComponentSource.fromMap(Map<String, dynamic> map) {
    return ComponentSource(
      name: map['name'] == null ? null : map['name'] as String,
      originalTransformOrCollection:
          map['originalTransformOrCollection'] == null
              ? null
              : map['originalTransformOrCollection'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}
