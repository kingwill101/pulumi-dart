// ignore_for_file: unused_element, unnecessary_cast

/// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
class ObjectId {
  /// The parts of an OID path. The most significant parts of the path come first.
  final List<int> objectIdPath;

  /// Creates a new [ObjectId].
  /// [objectIdPath] The parts of an OID path. The most significant parts of the path come first.
  ObjectId({required this.objectIdPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectIdPath': objectIdPath};
  }

  factory ObjectId.fromMap(Map<String, dynamic> map) {
    return ObjectId(objectIdPath: (map['objectIdPath'] as List).cast<int>());
  }
}
