// ignore_for_file: unused_element, unnecessary_cast


/// A reference to the managed component like Config Server.
class ManagedComponentReference {
  /// Resource Id of the managed component
  final String resourceId;

  /// Creates a new [ManagedComponentReference].
  /// [resourceId] Resource Id of the managed component
  ManagedComponentReference({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory ManagedComponentReference.fromMap(Map<String, dynamic> map) {
    return ManagedComponentReference(
      resourceId: map['resourceId'] as String,
    );
  }
}

