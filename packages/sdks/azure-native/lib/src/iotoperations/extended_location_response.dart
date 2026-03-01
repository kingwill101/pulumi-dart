// ignore_for_file: unused_element, unnecessary_cast


/// Extended location is an extension of Azure locations. They provide a way to use their Azure ARC enabled Kubernetes clusters as target locations for deploying Azure services instances.
class ExtendedLocationResponse {
  /// The name of the extended location.
  final String name;
  /// Type of ExtendedLocation.
  final String type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] The name of the extended location.
  /// [type] Type of ExtendedLocation.
  ExtendedLocationResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

