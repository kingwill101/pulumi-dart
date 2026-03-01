// ignore_for_file: unused_element, unnecessary_cast


/// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
class L2ConnectionsPropertiesResponseEdgeSite {
  /// Resource ID.
  final String id;

  /// Creates a new [L2ConnectionsPropertiesResponseEdgeSite].
  /// [id] Resource ID.
  L2ConnectionsPropertiesResponseEdgeSite({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory L2ConnectionsPropertiesResponseEdgeSite.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesResponseEdgeSite(
      id: map['id'] as String,
    );
  }
}

