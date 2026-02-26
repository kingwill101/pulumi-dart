// ignore_for_file: unused_element, unnecessary_cast

/// Description of an input or output of an execution stage.
class StageSource {
  /// Dataflow service generated name for this source.
  final String? name;

  /// User name for the original user transform or collection with which this source is most closely associated.
  final String? originalTransformOrCollection;

  /// Size of the source, if measurable.
  final String? sizeBytes;

  /// Human-readable name for this source; may be user or system generated.
  final String? userName;

  StageSource({
    this.name,
    this.originalTransformOrCollection,
    this.sizeBytes,
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
    final sizeBytesValue = sizeBytes;
    if (sizeBytesValue != null) {
      map['sizeBytes'] = sizeBytesValue;
    }
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory StageSource.fromMap(Map<String, dynamic> map) {
    return StageSource(
      name: map['name'] == null ? null : map['name'] as String,
      originalTransformOrCollection:
          map['originalTransformOrCollection'] == null
              ? null
              : map['originalTransformOrCollection'] as String,
      sizeBytes: map['sizeBytes'] == null ? null : map['sizeBytes'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}
