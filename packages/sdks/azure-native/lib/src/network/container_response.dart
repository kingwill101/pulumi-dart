// ignore_for_file: unused_element, unnecessary_cast


/// Reference to container resource in remote resource provider.
class ContainerResponse {
  /// Resource ID.
  final String? id;

  /// Creates a new [ContainerResponse].
  /// [id] Resource ID.
  ContainerResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ContainerResponse.fromMap(Map<String, dynamic> map) {
    return ContainerResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

