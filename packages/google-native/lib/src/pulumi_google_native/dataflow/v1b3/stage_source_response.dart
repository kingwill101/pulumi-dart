// ignore_for_file: unused_element, unnecessary_cast

/// Description of an input or output of an execution stage.
class StageSourceResponse {
  /// Dataflow service generated name for this source.
  final String name;

  /// User name for the original user transform or collection with which this source is most closely associated.
  final String originalTransformOrCollection;

  /// Size of the source, if measurable.
  final String sizeBytes;

  /// Human-readable name for this source; may be user or system generated.
  final String userName;

  StageSourceResponse({
    required this.name,
    required this.originalTransformOrCollection,
    required this.sizeBytes,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['originalTransformOrCollection'] = originalTransformOrCollection;
    map['sizeBytes'] = sizeBytes;
    map['userName'] = userName;
    return map;
  }

  factory StageSourceResponse.fromMap(Map<String, dynamic> map) {
    return StageSourceResponse(
      name: map['name'] as String,
      originalTransformOrCollection:
          map['originalTransformOrCollection'] as String,
      sizeBytes: map['sizeBytes'] as String,
      userName: map['userName'] as String,
    );
  }
}
