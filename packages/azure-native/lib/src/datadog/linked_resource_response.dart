// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a linked resource.
class LinkedResourceResponse {
  /// The ARM id of the linked resource.
  final String? id;
  /// The location of the linked resource.
  final String? location;

  /// Creates a new [LinkedResourceResponse].
  /// [id] The ARM id of the linked resource.
  /// [location] The location of the linked resource.
  LinkedResourceResponse({
    this.id,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
    };
  }

  factory LinkedResourceResponse.fromMap(Map<String, dynamic> map) {
    return LinkedResourceResponse(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}

