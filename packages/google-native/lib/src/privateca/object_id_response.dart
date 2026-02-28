// ignore_for_file: unused_element, unnecessary_cast

/// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
class ObjectIdResponse {
  /// The parts of an OID path. The most significant parts of the path come first.
  final List<int> objectIdPath;

  /// Creates a new [ObjectIdResponse].
  /// [objectIdPath] The parts of an OID path. The most significant parts of the path come first.
  ObjectIdResponse({
    required this.objectIdPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPath'] = objectIdPath;
    return map;
  }

  factory ObjectIdResponse.fromMap(Map<String, dynamic> map) {
    return ObjectIdResponse(
      objectIdPath: (map['objectIdPath'] as List).cast<int>(),
    );
  }
}
