// ignore_for_file: unused_element, unnecessary_cast


/// Extended location is an extension of Azure locations. They provide a way to use their Azure ARC enabled Kubernetes clusters as target locations for deploying Azure services instances.
class ExtendedLocation {
  /// The name of the extended location.
  final String name;
  /// Type of ExtendedLocation.
  final String type;

  /// Creates a new [ExtendedLocation].
  /// [name] The name of the extended location.
  /// [type] Type of ExtendedLocation.
  ExtendedLocation({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

